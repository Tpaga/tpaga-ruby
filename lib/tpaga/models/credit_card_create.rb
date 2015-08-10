module Tpaga
  # 
  class CreditCardCreate < BaseObject
    attr_accessor :primary_account_number, :expiration_month, :expiration_year, :card_verification_code, :card_holder_name, :billing_address
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'primary_account_number' => :'primaryAccountNumber',
        
        # 
        :'expiration_month' => :'expirationMonth',
        
        # 
        :'expiration_year' => :'expirationYear',
        
        # 
        :'card_verification_code' => :'cardVerificationCode',
        
        # 
        :'card_holder_name' => :'cardHolderName',
        
        # 
        :'billing_address' => :'billingAddress'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'primary_account_number' => :'string',
        :'expiration_month' => :'string',
        :'expiration_year' => :'string',
        :'card_verification_code' => :'string',
        :'card_holder_name' => :'string',
        :'billing_address' => :'BillingAddress'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'primaryAccountNumber']
        @primary_account_number = attributes[:'primaryAccountNumber']
      end
      
      if attributes[:'expirationMonth']
        @expiration_month = attributes[:'expirationMonth']
      end
      
      if attributes[:'expirationYear']
        @expiration_year = attributes[:'expirationYear']
      end
      
      if attributes[:'cardVerificationCode']
        @card_verification_code = attributes[:'cardVerificationCode']
      end
      
      if attributes[:'cardHolderName']
        @card_holder_name = attributes[:'cardHolderName']
      end
      
      if attributes[:'billingAddress']
        @billing_address = attributes[:'billingAddress']
      end
      
    end
  end
end
