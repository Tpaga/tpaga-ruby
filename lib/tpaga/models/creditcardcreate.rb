require 'date'

module Tpaga
class CreditCardCreate
  attr_accessor :billingAddress, :cardHolderName, :cardVerificationCode, :expirationMonth, :expirationYear, :primaryAccountNumber

  # :internal => :external
  def self.attribute_map
    {
      :billingAddress => :'billingAddress',
      :cardHolderName => :'cardHolderName',
      :cardVerificationCode => :'cardVerificationCode',
      :expirationMonth => :'expirationMonth',
      :expirationYear => :'expirationYear',
      :primaryAccountNumber => :'primaryAccountNumber'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"billingAddress"]
      @billingAddress = BillingAddress.new(attributes["billingAddress"]) if (attributes["billingAddress"].kind_of? Hash)
      end
    if self.class.attribute_map[:"cardHolderName"]
      @cardHolderName = attributes["cardHolderName"]
      end
    if self.class.attribute_map[:"cardVerificationCode"]
      @cardVerificationCode = attributes["cardVerificationCode"]
      end
    if self.class.attribute_map[:"expirationMonth"]
      @expirationMonth = attributes["expirationMonth"]
      end
    if self.class.attribute_map[:"expirationYear"]
      @expirationYear = attributes["expirationYear"]
      end
    if self.class.attribute_map[:"primaryAccountNumber"]
      @primaryAccountNumber = attributes["primaryAccountNumber"]
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

