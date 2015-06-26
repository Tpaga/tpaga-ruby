module Tpaga
  # 
  class DaviPlata < BaseObject
    attr_accessor :id, :number, :document_number, :document_type, :last_four, :customer, :verified, :max_amount
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

          #
          :'id' => :'id',

          #
          :'number' => :'number',

          #
          :'document_number' => :'documentNumber',

          #
          :'document_type' => :'documentType',

          #
          :'last_four' => :'lastFour',

          #
          :'customer' => :'customer',

          #
          :'verified' => :'verified',

          #
          :'max_amount' => :'maxAmount'

      }
    end

    # attribute type
    def self.swagger_types
      {
          :'id' => :'string',
          :'number' => :'string',
          :'document_number' => :'string',
          :'document_type' => :'string',
          :'last_four' => :'string',
          :'customer' => :'string',
          :'verified' => :'boolean',
          :'max_amount' => :'number'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}) { |memo, (k, v)| memo[k.to_sym] = v; memo }


      if attributes[:'id']
        @id = attributes[:'id']
      end

      if attributes[:'number']
        @number = attributes[:'number']
      end

      if attributes[:'documentNumber']
        @document_number = attributes[:'documentNumber']
      end

      if attributes[:'documentType']
        @document_type = attributes[:'documentType']
      end

      if attributes[:'lastFour']
        @last_four = attributes[:'lastFour']
      end

      if attributes[:'customer']
        @customer = attributes[:'customer']
      end

      if attributes[:'verified']
        @verified = attributes[:'verified']
      end

      if attributes[:'maxAmount']
        @max_amount = attributes[:'maxAmount']
      end

    end
  end
end
