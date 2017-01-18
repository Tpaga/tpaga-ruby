module Tpaga
  # 
  class CreditCardCharge < BaseObject
    attr_accessor :id, :amount, :tax_amount, :net_amount, :iac_amount, :tip_amount, :rete_renta_amount, :rete_iva_amount, :rete_ica_amount, :tpaga_fee_amount, :currency, :credit_card, :installments, :order_id, :description, :paid, :customer, :payment_transaction, :third_party_id, :transaction_info, :error_code, :error_message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'amount' => :'amount',
        
        # 
        :'tax_amount' => :'taxAmount',

        # 
        :'net_amount' => :'netAmount',

        # 
        :'iac_amount' => :'iacAmount',

        # 
        :'tip_amount' => :'tipAmount',

        # 
        :'rete_renta_amount' => :'reteRentaAmount',

        # 
        :'rete_iva_amount' => :'reteIvaAmount',

        # 
        :'rete_ica_amount' => :'reteIcaAmount',

        # 
        :'tpaga_fee_amount' => :'tpagaFeeAmount',
        
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
        :'payment_transaction' => :'paymentTransaction',
        
        # 
        :'transaction_info' => :'transactionInfo',
        
        #
        :'error_code' => :'errorCode',

        #
        :'error_message' => :'errorMessage',
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'amount' => :'number',
        :'tax_amount' => :'number',
        :'net_amount' => :'number',
        :'iac_amount' => :'number',
        :'tip_amount' => :'number',
        :'rete_renta_amount' => :'number',
        :'rete_iva_amount' => :'number',
        :'rete_ica_amount' => :'number',
        :'tpaga_fee_amount' => :'number',
        :'currency' => :'string',
        :'credit_card' => :'string',
        :'installments' => :'number',
        :'order_id' => :'string',
        :'third_party_id' => :'string',
        :'description' => :'string',
        :'paid' => :'boolean',
        :'customer' => :'string',
        :'payment_transaction' => :'string',
        :'transaction_info' => :'TransactionInfo',
        :'error_code' => :'string',
        :'error_message' => :'string',
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
      
      if attributes[:'netAmount']
        @net_amount = attributes[:'netAmount']
      end

      if attributes[:'iacAmount']
        @iac_amount = attributes[:'iacAmount']
      end
      
      if attributes[:'tipAmount']
        @tip_amount = attributes[:'tipAmount']
      end

      if attributes[:'reteRentaAmount']
        @rete_renta_amount = attributes[:'reteRentaAmount']
      end

      if attributes[:'reteIvaAmount']
        @rete_iva_amount = attributes[:'reteIvaAmount']
      end

      if attributes[:'reteIcaAmount']
        @rete_ica_amount = attributes[:'reteIcaAmount']
      end

      if attributes[:'tpagaFeeAmount']
        @tpaga_fee_amount = attributes[:'tpagaFeeAmount']
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
      
      if attributes[:'transactionInfo']
        @transaction_info = attributes[:'transactionInfo']
      end
      
      if attributes[:'errorCode']
        @error_code = attributes[:'errorCode']
      end

      if attributes[:'errorMessage']
        @error_message = attributes[:'errorMessage']
      end
    end
  end
end
