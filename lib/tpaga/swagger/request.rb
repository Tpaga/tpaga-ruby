module Tpaga
module Swagger

  class Request
    require 'uri'
    require 'addressable/uri'
    require 'typhoeus'

    attr_accessor :host, :path, :format, :params, :body, :http_method, :headers, :form_params


    # All requests must have an HTTP method and a path
    # Optionals parameters are :params, :headers, :body, :format, :host
    # 
    def initialize(http_method, path, attributes={})
      # initialize Swagger configuraiton if it has not been done so
      Swagger.configure if Swagger.configuration.nil?

      attributes[:format] ||= Swagger.configuration.format
      attributes[:params] ||= {}

      # set authentication based on configuration setting
      if attributes[:require_auth]
        case Swagger.configuration.api_key_type
        when 'header' # API key in http header
          # only header supports prefix
          if Swagger.configuration.api_key_prefix.present?
            attributes[:headers][Swagger.configuration.api_key_name] = "#{Swagger.configuration.api_key_prefix} #{Swagger.configuration.api_key}"
          else
            attributes[:headers][Swagger.configuration.api_key_name] = Swagger.configuration.api_key
          end
        when 'query' # API key in url query
          attributes[:params][Swagger.configuration.api_key_name] = Swagger.configuration.api_key
        else
          unless Swagger.configuration.api_key.blank?
            # HTTP basic
            http_auth_header = 'Basic ' + ["#{Swagger.configuration.api_key}:"].pack('m').delete("\r\n")
            attributes[:headers]['Authorization'] = http_auth_header
          else
            # throw error before sending the request to server
          end
        end
      end

      self.http_method = http_method.to_sym
      self.path = path
      attributes.each do |name, value|
        #send("#{name.to_s.underscore.to_sym}=", value)
        attr = name.to_s.underscore.to_sym
        send("#{attr}=", value) if respond_to? attr
      end
    end

    # Construct a base URL
    #
    def url(options = {})  
      u = Addressable::URI.new(
        :scheme => Swagger.configuration.scheme,
        :host => Swagger.configuration.host,
        :path => self.interpreted_path,
        :query => self.query_string.sub(/\?/, '')
      ).to_s
      
      # Drop trailing question mark, if present
      u.sub! /\?$/, ''
     
      # no longer needed as we no longer support obfuscated
      ## Obfuscate API key?
      #u.sub! /api\_key=\w+/, 'api_key=YOUR_API_KEY' if options[:obfuscated]
      
      u
    end

    # Iterate over the params hash, injecting any path values into the path string
    #
    # e.g. /word.{format}/{word}/entries => /word.json/cat/entries
    def interpreted_path
      p = self.path.dup

      # Fill in the path params
      self.params.each_pair do |key, value|
        p = p.gsub("{#{key}}", value.to_s)
      end

      # Stick a .{format} placeholder into the path if there isn't
      # one already or an actual format like json or xml
      # e.g. /words/blah => /words.{format}/blah
      if Swagger.configuration.inject_format
        unless ['.json', '.xml', '{format}'].any? {|s| p.downcase.include? s }
          p = p.sub(/^(\/?\w+)/, "\\1.#{format}")
        end
      end

      # Stick a .{format} placeholder on the end of the path if there isn't
      # one already or an actual format like json or xml
      # e.g. /words/blah => /words/blah.{format}
      if Swagger.configuration.force_ending_format
        unless ['.json', '.xml', '{format}'].any? {|s| p.downcase.include? s }
          p = "#{p}.#{format}"   
        end
      end

      p = p.sub("{format}", self.format.to_s)
      
      URI.encode [Swagger.configuration.base_path, p].join("/").gsub(/\/+/, '/')
    end
  
    # Massage the request body into a state of readiness
    # If body is a hash, camelize all keys then convert to a json string
    #
    def body=(value)      
      #comment: no need to use camelize keys
      #if value.is_a?(Hash)
      #  value = value.inject({}) do |memo, (k,v)|
      #    memo[k.to_s.camelize(:lower).to_sym] = v
      #    memo
      #  end
      #end
      @body = value
    end
    
    # If body is an object, JSONify it before making the actual request.
    # 
    def outgoing_body
      if @body.nil? && @form_params && !@form_params.empty?
        data = form_params.dup
        data.each do |key, value|
          data[key] = value.to_s if value && !value.is_a?(File)
        end
        data
      else
        @body.is_a?(String) ? @body : @body.to_json
      end
    end 
   
    # Construct a query string from the query-string-type params
    def query_string

      # Iterate over all params,
      # .. removing the ones that are part of the path itself.
      # .. stringifying values so Addressable doesn't blow up.
      query_values = {}
      self.params.each_pair do |key, value|
        next if self.path.include? "{#{key}}"                                   # skip path params
        next if value.blank? && value.class != FalseClass                       # skip empties

        # no longer support Swagger.configuration.camelize_params
        #if Swagger.configuration.camelize_params
        #  key = key.to_s.camelize(:lower).to_sym unless key.to_sym == :api_key    # api_key is not a camelCased param
        #end

        query_values[key] = value.to_s
      end
    
      # We don't want to end up with '?' as our query string
      # if there aren't really any params
      return "" if query_values.blank?
    
      # Addressable requires query_values to be set after initialization..
      qs = Addressable::URI.new
      qs.query_values = query_values
      qs.to_s
    end
  
    def make
      response = case self.http_method.to_sym
      when :get,:GET
        Typhoeus::Request.get(
          self.url,
          :headers => self.headers.stringify_keys,
        )

      when :post,:POST
        Typhoeus::Request.post(
          self.url,
          :body => self.outgoing_body,
          :headers => self.headers.stringify_keys,
        )

      when :put,:PUT
        Typhoeus::Request.put(
          self.url,
          :body => self.outgoing_body,
          :headers => self.headers.stringify_keys,
        )
      
      when :delete,:DELETE
        Typhoeus::Request.delete(
          self.url,
          :body => self.outgoing_body,
          :headers => self.headers.stringify_keys,
        )
      end
      Response.new(response)
    end
  
    def response
      self.make
    end
  
    def response_code_pretty
      return unless @response.present?
      @response.code.to_s    
    end
  
    def response_headers_pretty
      return unless @response.present?
      # JSON.pretty_generate(@response.headers).gsub(/\n/, '<br/>') # <- This was for RestClient
      @response.headers.gsub(/\n/, '<br/>') # <- This is for Typhoeus
    end

  end
end
end

