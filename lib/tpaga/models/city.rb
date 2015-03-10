require 'date'

module Tpaga
class City
  attr_accessor :country, :name, :state

  # :internal => :external
  def self.attribute_map
    {
      :country => :'country',
      :name => :'name',
      :state => :'state'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"country"]
      @country = attributes["country"]
      end
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
      end
    if self.class.attribute_map[:"state"]
      @state = attributes["state"]
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

