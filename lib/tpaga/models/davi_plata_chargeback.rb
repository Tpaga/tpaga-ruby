module Tpaga
  # 
  class DaviPlataChargeback < BaseObject
    attr_accessor :id, :davi_plata_charge, :davi_plata, :reimbursed
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'davi_plata_charge' => :'daviPlataCharge',
        
        # 
        :'davi_plata' => :'daviPlata',
        
        # 
        :'reimbursed' => :'reimbursed'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'davi_plata_charge' => :'string',
        :'davi_plata' => :'string',
        :'reimbursed' => :'boolean'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'daviPlataCharge']
        @davi_plata_charge = attributes[:'daviPlataCharge']
      end
      
      if attributes[:'daviPlata']
        @davi_plata = attributes[:'daviPlata']
      end
      
      if attributes[:'reimbursed']
        @reimbursed = attributes[:'reimbursed']
      end
      
    end
  end
end
