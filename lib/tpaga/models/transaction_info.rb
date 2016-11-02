module Tpaga
  # 
  class TransactionInfo < BaseObject
    attr_accessor :authorization_code, :status
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'authorization_code' => :'authorizationCode',
        
        # 
        :'status' => :'status',
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'authorization_code' => :'string',
        :'status' => :'string',
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'authorizationCode']
        @authorization_code = attributes[:'authorizationCode']
      end
      
      if attributes[:'status']
        @status = attributes[:'status']
      end
      
    end
  end
end
