require "uri"

module Tpaga
class CustomerAPI
  basePath = "https://api.tpaga.co.local:8443/api"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  

  # Add a new Customer to the Merchant
  # Creates a new `Customer` associated to the Merchant
  # @param body Customer object that needs to be added to the Merchant
  # @return Customer
  def self.add_customer (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'body' => body}

    options.merge!(required_options)

    #resource path
    path = "/customer"

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/json'

    # http body
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
          post_body = body.to_body
        else
          post_body = body
        end
      end
    end
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
    Customer.new(response)

  end



  # Add a new Credit Card payment method to the Customer
  # Creates a new `CreditCard` and associated to the `Customer`
  # @param customer_id Identificaiton of `Customer` to associate the new `CreditCard`
  # @param body CreditCard object that needs to be added to the Customer
  # @return CreditCard
  def self.add_credit_card (customer_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'customer_id' => customer_id,
      :'body' => body}

    options.merge!(required_options)

    #resource path
    path = "/customer/{customer_id}/credit_card".sub('{' + 'customer_id' + '}', escapeString(customer_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/json'

    # http body
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
          post_body = body.to_body
        else
          post_body = body
        end
      end
    end
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
    CreditCard.new(response)

  end



  # Find a Customer by ID
  # Returns a `Customer` when ID is `customer_token_id` or anything else will simulate API error conditions
  # @param id Identification of `Customer` that needs to be fetched
  # @return Customer
  def self.get_customer_by_id (id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "id is required" if id.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'id' => id}

    options.merge!(required_options)

    #resource path
    path = "/customer/{id}".sub('{' + 'id' + '}', escapeString(id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/x-www-form-urlencoded'

    # http body
    post_body = nil
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
    Customer.new(response)

  end



  # Deletes a Customer by ID
  # Deletes a Customer when ID is `customer_token_id_delete` or anything else will simulate API error conditions. Only available when the customer does not have associated payment methods.
  # @param id Identificaiton of customer that needs to be deleted
  # @return void
  def self.delete_customer_by_id (id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "id is required" if id.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'id' => id}

    options.merge!(required_options)

    #resource path
    path = "/customer/{id}".sub('{' + 'id' + '}', escapeString(id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/x-www-form-urlencoded'

    # http body
    post_body = nil
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make
    

  end



  # Find a `CreditCard` by ID
  # Returns a CreditCard when ID is `credit_card_token` or anything else will simulate API error conditions
  # @param customer_id Identificaiton of `Customer` associated with the card
  # @param card_id Identification of `CreditCard` that needs to be fetched
  # @return CreditCard
  def self.get_credit_card_by_id (customer_id,card_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "card_id is required" if card_id.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'customer_id' => customer_id,
      :'card_id' => card_id}

    options.merge!(required_options)

    #resource path
    path = "/customer/{customer_id}/credit_card/{card_id}".sub('{' + 'customer_id' + '}', escapeString(customer_id))
    .sub('{' + 'card_id' + '}', escapeString(card_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/x-www-form-urlencoded'

    # http body
    post_body = nil
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
    CreditCard.new(response)

  end



  # Deletes a Credit Card by ID
  # Deletes a `CreditCard` when ID is `credit_card_token_delete` or anything else will simulate API error conditions. Only available when the CreditCard does not have associated Charges.
  # @param customer_id Identificaiton token of `Customer` associated with the card
  # @param card_id Identification token of `CreditCard` that needs to be deleted
  # @return void
  def self.delete_credit_card_by_id (customer_id,card_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "card_id is required" if card_id.nil?
    # set default values and merge with input
    options = {
    }.merge(opts)

    required_options = {
      :'customer_id' => customer_id,
      :'card_id' => card_id}

    options.merge!(required_options)

    #resource path
    path = "/customer/{customer_id}/credit_card/{card_id}".sub('{' + 'customer_id' + '}', escapeString(customer_id))
    .sub('{' + 'card_id' + '}', escapeString(card_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameter
    headers = {}
    # additional http headers
    headers['Accept'] = 'application/json'
    headers['Content-Type'] = 'application/x-www-form-urlencoded'

    # http body
    post_body = nil
    # form parameter
    form_parameter_hash = {}
    


    # authentication setting
    require_auth = true

    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make
    

  end

end
end

