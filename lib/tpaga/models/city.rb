module Tpaga
  # 
  class City < BaseObject
    attr_accessor :name, :state, :country
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'name' => :'name',
        
        # ISO 3166-2 code for state
        :'state' => :'state',
        
        # ISO 3166-1 Alpha 2 code for country
        :'country' => :'country'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'string',
        :'state' => :'string',
        :'country' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'state']
        @state = attributes[:'state']
      end
      
      if attributes[:'country']
        @country = attributes[:'country']
      end
      
    end
  end
end
