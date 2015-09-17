module Tpaga
  # 
  class CreditCardRefund < BaseObject
    attr_accessor :id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The id of the `CreditCardCharge` to be refunded.
        :'id' => :'id'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
    end

  end
end
