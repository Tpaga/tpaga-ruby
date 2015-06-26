module Tpaga
  # 
  class BillingAddress < BaseObject
    attr_accessor :address_line1, :address_line2, :city, :state, :postal_code, :country
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'address_line1' => :'addressLine1',
        
        # 
        :'address_line2' => :'addressLine2',
        
        # 
        :'city' => :'city',
        
        # 
        :'state' => :'state',
        
        # 
        :'postal_code' => :'postalCode',
        
        # 
        :'country' => :'country'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'address_line1' => :'string',
        :'address_line2' => :'string',
        :'city' => :'string',
        :'state' => :'string',
        :'postal_code' => :'string',
        :'country' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'addressLine1']
        @address_line1 = attributes[:'addressLine1']
      end
      
      if attributes[:'addressLine2']
        @address_line2 = attributes[:'addressLine2']
      end
      
      if attributes[:'city']
        @city = attributes[:'city']
      end
      
      if attributes[:'state']
        @state = attributes[:'state']
      end
      
      if attributes[:'postalCode']
        @postal_code = attributes[:'postalCode']
      end
      
      if attributes[:'country']
        @country = attributes[:'country']
      end
      
    end
  end
end
