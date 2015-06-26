module Tpaga
  # 
  class ApiError < BaseObject
    attr_accessor :errors
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'errors' => :'errors'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'errors' => :'array[ApiErrorsItem]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'errors']
        if (value = attributes[:'errors']).is_a?(Array)
          @errors = value
        end
      end
      
    end
  end
end
