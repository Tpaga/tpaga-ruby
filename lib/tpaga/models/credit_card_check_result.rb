module Tpaga
  # 
  class CreditCardCheckResult < BaseObject
    attr_accessor :card_holder_legal_id_matches
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'card_holder_legal_id_matches' => :'cardHolderLegalIdMatches',
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'card_holder_legal_id_matches' => :'string',
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'cardHolderLegalIdMatches']
        @card_holder_legal_id_matches = attributes[:'card_holder_legal_id_matches']
      end
      
    end
  end
end
