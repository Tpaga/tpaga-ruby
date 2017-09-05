module Tpaga
  #
  class Customer < BaseObject
    attr_accessor :id, :first_name, :last_name, :email, :gender, :phone, :address, :legal_id_number, :merchant_customer_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        #
        :'id' => :'id',

        #
        :'first_name' => :'firstName',

        #
        :'last_name' => :'lastName',

        #
        :'email' => :'email',

        #
        :'gender' => :'gender',

        #
        :'phone' => :'phone',

        #
        :'legal_id_number' => :'legalIdNumber',

        #
        :'merchant_customer_id' => :'merchantCustomerId',

        #
        :'address' => :'address'

      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'first_name' => :'string',
        :'last_name' => :'string',
        :'email' => :'string',
        :'gender' => :'string',
        :'phone' => :'string',
        :'legal_id_number' => :'string',
        :'merchant_customer_id' => :'string',
        :'address' => :'Address',

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'id']
        @id = attributes[:'id']
      end

      if attributes[:'firstName']
        @first_name = attributes[:'firstName']
      end

      if attributes[:'lastName']
        @last_name = attributes[:'lastName']
      end

      if attributes[:'email']
        @email = attributes[:'email']
      end

      if attributes[:'gender']
        @gender = attributes[:'gender']
      end

      if attributes[:'phone']
        @phone = attributes[:'phone']
      end

      if attributes[:'legalIdNumber']
        @legal_id_number = attributes[:'legalIdNumber']
      end

      if attributes[:'merchant_customer_id']
        @phone = attributes[:'merchantCustomerId']
      end

      if attributes[:'address']
        @address = attributes[:'address']
      end

    end
  end
end
