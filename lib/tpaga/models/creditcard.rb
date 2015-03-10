require 'date'

module Tpaga
class CreditCard
  attr_accessor :addressCity, :addressCountry, :addressLine1, :addressLine2, :addressPostalCode, :addressState, :bin, :cardHolderName, :customer, :expirationMonth, :expirationYear, :id, :lastFour, :type

  # :internal => :external
  def self.attribute_map
    {
      :addressCity => :'addressCity',
      :addressCountry => :'addressCountry',
      :addressLine1 => :'addressLine1',
      :addressLine2 => :'addressLine2',
      :addressPostalCode => :'addressPostalCode',
      :addressState => :'addressState',
      :bin => :'bin',
      :cardHolderName => :'cardHolderName',
      :customer => :'customer',
      :expirationMonth => :'expirationMonth',
      :expirationYear => :'expirationYear',
      :id => :'id',
      :lastFour => :'lastFour',
      :type => :'type'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"addressCity"]
      @addressCity = attributes["addressCity"]
      end
    if self.class.attribute_map[:"addressCountry"]
      @addressCountry = attributes["addressCountry"]
      end
    if self.class.attribute_map[:"addressLine1"]
      @addressLine1 = attributes["addressLine1"]
      end
    if self.class.attribute_map[:"addressLine2"]
      @addressLine2 = attributes["addressLine2"]
      end
    if self.class.attribute_map[:"addressPostalCode"]
      @addressPostalCode = attributes["addressPostalCode"]
      end
    if self.class.attribute_map[:"addressState"]
      @addressState = attributes["addressState"]
      end
    if self.class.attribute_map[:"bin"]
      @bin = attributes["bin"]
      end
    if self.class.attribute_map[:"cardHolderName"]
      @cardHolderName = attributes["cardHolderName"]
      end
    if self.class.attribute_map[:"customer"]
      @customer = attributes["customer"]
      end
    if self.class.attribute_map[:"expirationMonth"]
      @expirationMonth = attributes["expirationMonth"]
      end
    if self.class.attribute_map[:"expirationYear"]
      @expirationYear = attributes["expirationYear"]
      end
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
      end
    if self.class.attribute_map[:"lastFour"]
      @lastFour = attributes["lastFour"]
      end
    if self.class.attribute_map[:"type"]
      @type = attributes["type"]
      end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      next if self.send(key).nil?

      if self.send(key).respond_to? :to_body
        body[value] = self.send(key).to_body
      elsif self.send(key).kind_of?(Array)
        body[value] = []
        self.send(key).each do |arr|
           if arr.respond_to? :to_body
               body[value] << arr.to_body
           else
               body[value] << arr
           end
        end
      else
        body[value] = self.send(key)
      end
      
    end
    body
  end
end
end

