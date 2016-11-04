module Tpaga
  # 
  class ValidationCharge < BaseObject
    attr_accessor :successful, :error_code
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'successful' => :'successful',
        
        # 
        :'error_code' => :'errorCode',
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'successful' => :'boolean',
        :'error_code' => :'string',
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'successful']
        @authorization_code = attributes[:'successful']
      end
      
      if attributes[:'errorCode']
        @status = attributes[:'error_code']
      end
      
    end
  end
end
