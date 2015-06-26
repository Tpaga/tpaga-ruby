require "uri"

module Tpaga
  class CreditCardApi
    basePath = "https://sandbox.tpaga.co/api"
    # apiInvoker = APIInvoker

    # Adds a new CreditCardCharge to Customer&#39;s CreditCard
    # Creates a new `CreditCardCharge` and associates it to a `CreditCard`.
    # @param body The `CreditCardCharge` object to be generated to a `CreditCard` it has the following fields\n- **id** its the id of the `CreditCardCharge` thats going to be generated after creation.\n- **creditCard** which is the identificator of the `CreditCard` to be charged\n- **customer** which is the id of the `Customer` associated with the `CreditCard`\n- **amount** which is the full amount of the charge\n- **currency** its the 3-letter ISO code for the currency.\n- **installments** its the amount of payments to divide the charge amount, it can be minumum 1 maximum 36\n- **taxAmount** the amount that accounts as taxes.\n- **paid** its the status of the charge. true if its paid, false if its not.\n- **description** which is the desciption of the charge being made.\n- **orderId** commerce order identificator
    # @param [Hash] opts the optional parameters
    # @return [CreditCardCharge]
    def self.add_credit_card_charge(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_credit_card_charge" if body.nil?


      # resource path
      path = "/charge/credit_card".sub('{format}', 'json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)


      auth_names = ['api_key']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CreditCardCharge.new() and obj.build_from_hash(response)
    end

    # Retrieve a CreditCardCharge by ID
    # Get the details of an existing `CreditCardCharge`. This method only requires an unique `CreditCardCharge` identifier `id` that was returned upon `CreditCardCharge` creation.
    # @param id Identification of `CreditCardCharge` that needs to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [CreditCardCharge]
    def self.get_credit_card_charge_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_credit_card_charge_by_id" if id.nil?


      # resource path
      path = "/charge/credit_card/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['api_key']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CreditCardCharge.new() and obj.build_from_hash(response)
    end

    # Adds a new Credit Card payment method to the Customer
    # Creates a new `CreditCard` and associates it to the `Customer`
    # @param customer_id Identificaiton of `Customer` to associate the new `CreditCard`
    # @param body The `CreditCard` object to be associated to the `Customer`, it has the following fields\n- **primaryAccountNumber** which is the number as it appears on the credit card.\n- **cardVerificationCode** which is the security code usually found in the back o the credit card.\n- **expirationMonth** which is the month of expiration of the credit card, its entered as a numeric value with single digits or double digits like 5 or 05 to represent may.\n- **expirationYear** which is the year of expiration of the credit card in its complete numeric value.\n- **cardHolderName** which is the name of the card holder exactly as it appears on the credit card.\n- **billingAddress** which is the billing address of the credit card that consists of two address lines, the city, the country, the postalCode and the state of the address.
    # @param [Hash] opts the optional parameters
    # @return [CreditCard]
    def self.add_credit_card(customer_id, body, opts = {})

      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling add_credit_card" if customer_id.nil?

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_credit_card" if body.nil?


      # resource path
      path = "/customer/{customer_id}/credit_card".sub('{format}', 'json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)


      auth_names = ['api_key']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CreditCard.new() and obj.build_from_hash(response)
    end

    # Retrieve a CreditCard by ID
    # Get the details of an existing `CreditCard`. This method only requires an unique `CreditCard` identifier `id` that was returned upon `CreditCard` creation.
    # @param customer_id Identification of `Customer` associated with the `CreditCard`
    # @param card_id Identification of `CreditCard` that needs to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [CreditCard]
    def self.get_credit_card_by_id(customer_id, card_id, opts = {})

      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling get_credit_card_by_id" if customer_id.nil?

      # verify the required parameter 'card_id' is set
      raise "Missing the required parameter 'card_id' when calling get_credit_card_by_id" if card_id.nil?


      # resource path
      path = "/customer/{customer_id}/credit_card/{card_id}".sub('{format}', 'json').sub('{' + 'customer_id' + '}', customer_id.to_s).sub('{' + 'card_id' + '}', card_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['api_key']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CreditCard.new() and obj.build_from_hash(response)
    end

    # Deletes a CreditCard by ID
    # Deletes a `CreditCard` when its `id` matches the parameters. Only available when `CreditCard` does not have associated Charges.
    # @param customer_id Identificaiton of `Customer` associated with the `CreditCard`
    # @param card_id Identification of `CreditCard` to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.delete_credit_card_by_id(customer_id, card_id, opts = {})

      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling delete_credit_card_by_id" if customer_id.nil?

      # verify the required parameter 'card_id' is set
      raise "Missing the required parameter 'card_id' when calling delete_credit_card_by_id" if card_id.nil?


      # resource path
      path = "/customer/{customer_id}/credit_card/{card_id}".sub('{format}', 'json').sub('{' + 'customer_id' + '}', customer_id.to_s).sub('{' + 'card_id' + '}', card_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['api_key']
      Swagger::Request.new(:DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end
  end
end
