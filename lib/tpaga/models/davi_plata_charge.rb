module Tpaga
  # 
  class DaviPlataCharge < BaseObject
    attr_accessor :id, :amount, :tax_amount, :currency, :davi_plata, :order_id, :description, :paid, :customer, :payment_transaction
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'amount' => :'amount',
        
        # 
        :'tax_amount' => :'taxAmount',
        
        # 3-letter ISO code for currency.
        :'currency' => :'currency',
        
        # 
        :'davi_plata' => :'daviPlata',
        
        # 
        :'order_id' => :'orderId',
        
        # 
        :'description' => :'description',
        
        # 
        :'paid' => :'paid',
        
        # 
        :'customer' => :'customer',
        
        # 
        :'payment_transaction' => :'paymentTransaction'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'amount' => :'number',
        :'tax_amount' => :'number',
        :'currency' => :'string',
        :'davi_plata' => :'string',
        :'order_id' => :'string',
        :'description' => :'string',
        :'paid' => :'boolean',
        :'customer' => :'string',
        :'payment_transaction' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'amount']
        @amount = attributes[:'amount']
      end
      
      if attributes[:'taxAmount']
        @tax_amount = attributes[:'taxAmount']
      end
      
      if attributes[:'currency']
        @currency = attributes[:'currency']
      end
      
      if attributes[:'daviPlata']
        @davi_plata = attributes[:'daviPlata']
      end
      
      if attributes[:'orderId']
        @order_id = attributes[:'orderId']
      end
      
      if attributes[:'description']
        @description = attributes[:'description']
      end
      
      if attributes[:'paid']
        @paid = attributes[:'paid']
      end
      
      if attributes[:'customer']
        @customer = attributes[:'customer']
      end
      
      if attributes[:'paymentTransaction']
        @payment_transaction = attributes[:'paymentTransaction']
      end
      
    end
  end
end
