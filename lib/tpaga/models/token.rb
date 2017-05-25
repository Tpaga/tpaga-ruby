module Tpaga
  # 
  class Token < BaseObject
    attr_accessor :token, :used, :skip_legal_id_check
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The token identification
        :'token' => :'token',

        :'skip_legal_id_check' => :'skipLegalIdCheck',
        
        # If the token was already used
        :'used' => :'used'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'token' => :'String',
        :'skip_legal_id_check' => :'BOOLEAN',
        :'used' => :'BOOLEAN',
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'token']
        @token = attributes[:'token']
      end

      if attributes[:'skipLegalIdCheck']
        @skip_legal_id_check = attributes[:'skipLegalIdCheck']
      end
      
      if attributes[:'used']
        @used = attributes[:'used']
      end
      
    end

  end
end
