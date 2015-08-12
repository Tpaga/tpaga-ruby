module Tpaga
  # 
  class CreditCardCharge < BaseObject
    attr_accessor :id, :amount, :tax_amount, :currency, :credit_card, :installments, :order_id, :description, :paid, :customer, :payment_transaction
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
        :'credit_card' => :'creditCard',
        
        # The amount of payments to divide the charge amount.
        :'installments' => :'installments',
        
        # 
        :'order_id' => :'orderId',
        
        # 
        :'description' => :'description',

        #
        :'third_party_id' => :'thirdPartyId',

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
        :'credit_card' => :'string',
        :'installments' => :'number',
        :'order_id' => :'string',
        :'third_party_id' => :'string',
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
      
      if attributes[:'creditCard']
        @credit_card = attributes[:'creditCard']
      end
      
      if attributes[:'installments']
        @installments = attributes[:'installments']
      end
      
      if attributes[:'orderId']
        @order_id = attributes[:'orderId']
        end

      if attributes[:'thirdPartyId']
        @third_party_id = attributes[:'thirdPartyId']
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
