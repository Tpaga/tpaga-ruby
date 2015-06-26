module Tpaga
  # 
  class ApiErrorsItem < BaseObject
    attr_accessor :object, :field, :rejected_value, :message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'object' => :'object',
        
        # 
        :'field' => :'field',
        
        # 
        :'rejected_value' => :'rejected-value',
        
        # 
        :'message' => :'message'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'object' => :'string',
        :'field' => :'string',
        :'rejected_value' => :'string',
        :'message' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'object']
        @object = attributes[:'object']
      end
      
      if attributes[:'field']
        @field = attributes[:'field']
      end
      
      if attributes[:'rejected-value']
        @rejected_value = attributes[:'rejected-value']
      end
      
      if attributes[:'message']
        @message = attributes[:'message']
      end
      
    end
  end
end
