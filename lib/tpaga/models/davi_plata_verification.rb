module Tpaga
  # 
  class DaviPlataVerification < BaseObject
    attr_accessor :davi_plata, :pin_number
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'davi_plata' => :'daviPlata',
        
        # 
        :'pin_number' => :'pinNumber'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'davi_plata' => :'string',
        :'pin_number' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'daviPlata']
        @davi_plata = attributes[:'daviPlata']
      end
      
      if attributes[:'pinNumber']
        @pin_number = attributes[:'pinNumber']
      end
      
    end
  end
end
