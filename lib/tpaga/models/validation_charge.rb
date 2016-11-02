module Tpaga
  # 
  class ValidationCharge < BaseObject
    attr_accessor :succesful, :error_code
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'succesful' => :'succesful',
        
        # 
        :'error_code' => :'errorCode',
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'succesful' => :'boolean',
        :'error_code' => :'string',
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'succesful']
        @authorization_code = attributes[:'succesful']
      end
      
      if attributes[:'errorCode']
        @status = attributes[:'error_code']
      end
      
    end
  end
end
