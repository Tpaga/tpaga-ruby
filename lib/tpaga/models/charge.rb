require 'date'

module Tpaga
class Charge
  attr_accessor :amount, :creditCard, :currency, :customer, :description, :id, :orderId, :paid, :paymentTransaction, :taxAmount

  # :internal => :external
  def self.attribute_map
    {
      :amount => :'amount',
      :creditCard => :'creditCard',
      :currency => :'currency',
      :customer => :'customer',
      :description => :'description',
      :id => :'id',
      :orderId => :'orderId',
      :paid => :'paid',
      :paymentTransaction => :'paymentTransaction',
      :taxAmount => :'taxAmount'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"amount"]
      @amount = attributes["amount"]
      end
    if self.class.attribute_map[:"creditCard"]
      @creditCard = attributes["creditCard"]
      end
    if self.class.attribute_map[:"currency"]
      @currency = attributes["currency"]
      end
    if self.class.attribute_map[:"customer"]
      @customer = attributes["customer"]
      end
    if self.class.attribute_map[:"description"]
      @description = attributes["description"]
      end
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
      end
    if self.class.attribute_map[:"orderId"]
      @orderId = attributes["orderId"]
      end
    if self.class.attribute_map[:"paid"]
      @paid = attributes["paid"]
      end
    if self.class.attribute_map[:"paymentTransaction"]
      @paymentTransaction = attributes["paymentTransaction"]
      end
    if self.class.attribute_map[:"taxAmount"]
      @taxAmount = attributes["taxAmount"]
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

