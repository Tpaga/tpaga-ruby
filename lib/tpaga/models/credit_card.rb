module Tpaga
  # 
  class CreditCard < BaseObject
    attr_accessor :id, :bin, :type, :expiration_month, :expiration_year, :card_verification_code, :card_holder_name, :last_four, :customer, :address_line1, :address_line2, :address_city, :address_state, :address_postal_code, :address_country, :validation_charge, :credit_card_checks, :card_holder_legal_id_number, :card_holder_legal_id_type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'bin' => :'bin',
        
        # 
        :'type' => :'type',
        
        # 
        :'expiration_month' => :'expirationMonth',
        
        # 
        :'expiration_year' => :'expirationYear',
        
        # 
        :'card_verification_code' => :'cardVerificationCode',
        
        # 
        :'card_holder_name' => :'cardHolderName',

        :'card_holder_legal_id_number' => :'cardHolderLegalIdNumber',

        :'card_holder_legal_id_type' => :'cardHolderLegalIdType',
        
        # 
        :'last_four' => :'lastFour',
        
        # 
        :'customer' => :'customer',
        
        # 
        :'address_line1' => :'addressLine1',
        
        # 
        :'address_line2' => :'addressLine2',
        
        # 
        :'address_city' => :'addressCity',
        
        # 
        :'address_state' => :'addressState',
        
        # 
        :'address_postal_code' => :'addressPostalCode',
        
        # 
        :'validation_charge' => :'validationCharge',

        # 
        :'credit_card_checks' => :'creditCardChecks',
        
        # 
        :'address_country' => :'addressCountry'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'bin' => :'string',
        :'type' => :'string',
        :'expiration_month' => :'string',
        :'expiration_year' => :'string',
        :'card_verification_code' => :'string',
        :'card_holder_name' => :'string',
        :'card_holder_legal_id_number' => :'string',
        :'card_holder_legal_id_type' => :'string',
        :'last_four' => :'string',
        :'customer' => :'string',
        :'address_line1' => :'string',
        :'address_line2' => :'string',
        :'address_city' => :'string',
        :'address_state' => :'string',
        :'address_postal_code' => :'string',
        :'address_country' => :'string',
        :'validation_charge' => :'ValidationCharge',
        :'credit_card_checks' => :'CreditCardCheckResult',
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'bin']
        @bin = attributes[:'bin']
      end
      
      if attributes[:'type']
        @type = attributes[:'type']
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

      if attributes[:'cardHolderLegalIdNumber']
        @card_holder_legal_id_number = attributes[:'cardHolderLegalIdNumber']
      end

      if attributes[:'cardHolderLegalIdType']
        @card_holder_legal_id_type = attributes[:'cardHolderLegalIdType']
      end
      
      if attributes[:'lastFour']
        @last_four = attributes[:'lastFour']
      end
      
      if attributes[:'customer']
        @customer = attributes[:'customer']
      end
      
      if attributes[:'addressLine1']
        @address_line1 = attributes[:'addressLine1']
      end
      
      if attributes[:'addressLine2']
        @address_line2 = attributes[:'addressLine2']
      end
      
      if attributes[:'addressCity']
        @address_city = attributes[:'addressCity']
      end
      
      if attributes[:'addressState']
        @address_state = attributes[:'addressState']
      end
      
      if attributes[:'addressPostalCode']
        @address_postal_code = attributes[:'addressPostalCode']
      end
      
      if attributes[:'addressCountry']
        @address_country = attributes[:'addressCountry']
      end

      if attributes[:'validationCharge']
        @validation_charge = attributes[:'validationCharge']
      end

      if attributes[:'creditCardChecks']
        @credit_card_checks = attributes[:'creditCardChecks']
      end
      
    end
  end
end
