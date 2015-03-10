require "uri"

module Tpaga
class ChargeAPI
  basePath = "https://api.tpaga.co.local:8443/api"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  

  # Add a new Charge to Customer's CreditCard
  # A new `Charge` to a `CreditCard` is created.
  # @param body Charge object that needs to be authorized.
  # @return Charge
  def self.add_charge (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'body' => body}

    options.merge!(required_options)

    #resource path
    path = "/charge"

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/json'

    # http body
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
          post_body = body.to_body
        else
          post_body = body
        end
      end
    end
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
    Charge.new(response)

  end



  # Find a Charge by ID
  # Returns a `Charge` when id is `charge_token_id` or anything else will simulate API error conditions
  # @param id Identification of `Charge` that needs to be fetched
  # @return Charge
  def self.get_charge_by_id (id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "id is required" if id.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'id' => id}

    options.merge!(required_options)

    #resource path
    path = "/charge/{id}".sub('{' + 'id' + '}', escapeString(id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/x-www-form-urlencoded'

    # http body
    post_body = nil
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
    Charge.new(response)

  end

end
end

