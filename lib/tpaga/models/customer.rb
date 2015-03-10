require 'date'

module Tpaga
class Customer
  attr_accessor :address, :email, :firstName, :gender, :id, :lastName, :phone

  # :internal => :external
  def self.attribute_map
    {
      :address => :'address',
      :email => :'email',
      :firstName => :'firstName',
      :gender => :'gender',
      :id => :'id',
      :lastName => :'lastName',
      :phone => :'phone'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"address"]
      @address = Address.new(attributes["address"]) if (attributes["address"].kind_of? Hash)
      end
    if self.class.attribute_map[:"email"]
      @email = attributes["email"]
      end
    if self.class.attribute_map[:"firstName"]
      @firstName = attributes["firstName"]
      end
    if self.class.attribute_map[:"gender"]
      @gender = attributes["gender"]
      end
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
      end
    if self.class.attribute_map[:"lastName"]
      @lastName = attributes["lastName"]
      end
    if self.class.attribute_map[:"phone"]
      @phone = attributes["phone"]
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

