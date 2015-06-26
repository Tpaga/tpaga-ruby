require "uri"

module Tpaga
  class DaviPlataApi
    basePath = "https://sandbox.tpaga.co/api"
    # apiInvoker = APIInvoker

    # Adds a new DaviPlataCharge to Customer&#39;s DaviPlata
    # Creates a new `DaviPlataCharge` and associates it to a `DaviPlata`.
    # @param body The `DaviPlataCharge` object to be generated to a `DaviPlata`. It has the following fields\n- **id** its the id of the `DaviPlataCharge` thats going to be generated after creation.\n- **daviPlata** which is the identificator of the `DaviPlata` to be charged\n- **customer** which is the id of the `Customer` associated with the `DaviPlata`\n- **amount** which is the full amount of the charge\n- **currency** its the 3-letter ISO code for the currency.\n- **taxAmount** the amount that accounts as taxes.\n- **paid** its the status of the charge. true if its paid, false if its not.\n- **description** which is the desciption of the charge being made.\n- **orderId** commerce order identificator
    # @param [Hash] opts the optional parameters
    # @return [DaviPlataCharge]
    def self.add_davi_plata_charge(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_davi_plata_charge" if body.nil?


      # resource path
      path = "/charge/daviplata".sub('{format}', 'json')

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
      obj = DaviPlataCharge.new() and obj.build_from_hash(response)
    end

    # Retrieve a DaviPlataCharge by ID
    # Get the details of an existing `DaviPlataCharge`. This method only requires an unique `DaviPlataCharge` identifier `id` that was returned upon `DaviPlataCharge` creation.
    # @param id Identification of `DaviPlataCharge` that needs to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [DaviPlataCharge]
    def self.get_davi_plata_charge_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_davi_plata_charge_by_id" if id.nil?


      # resource path
      path = "/charge/daviplata/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

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
      obj = DaviPlataCharge.new() and obj.build_from_hash(response)
    end

    # Adds a new DaviPlataChargeback to Customer&#39;s DaviPlata
    # Creates a new `DaviPlataChargeback` and associates it to a `DaviPlata`.
    # @param body The `DaviPlataChargeback` to be applied to a `DaviPlata`. It has the following fields\n- **id** its the id of the `DaviPlataChargeback` thats going to be generated after creation.\n- **daviPlata** its the id of the `DaviPlata` to be reinbursed.\n- **daviPlataCharge** its the id of the `DaviPlataCharge` to apply the Chargeback.\n- **reimbursed** its the status of the chargeback, true if its been reinbursed or false if its still pending.
    # @param [Hash] opts the optional parameters
    # @return [DaviPlataChargeback]
    def self.add_davi_plata_chargeback(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_davi_plata_chargeback" if body.nil?


      # resource path
      path = "/chargeback/daviplata".sub('{format}', 'json')

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
      obj = DaviPlataChargeback.new() and obj.build_from_hash(response)
    end

    # Retrieve a DaviPlataChargeback by ID
    # Get the details of an existing `DaviPlataChargeback`. This method only requires an unique `DaviPlataChargeback` identifier `id` that was returned upon `DaviPlataChargeback` creation.
    # @param id Identification of `DaviPlataChargeback` to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [DaviPlataChargeback]
    def self.get_davi_plata_chargeback_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_davi_plata_chargeback_by_id" if id.nil?


      # resource path
      path = "/chargeback/daviplata/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

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
      obj = DaviPlataChargeback.new() and obj.build_from_hash(response)
    end

    # Adds a new DaviPlata payment method to the Customer
    # Creates a new `DaviPLata` and associates it to the `Customer`
    # @param customer_id Identification of `Customer` to associate the new `DaviPlata`
    # @param body The `DaviPlata` object to be added to the `Customer`\n- **id** its the id of the `DaviPlata` thats going to be generated after creation.\n- **number** its the `DaviPlata` number.\n- **lastFour** it the last four digits of the `DaviPlata` number\n- **customer** its the id of the `Customer` associated to the `DaviPlata`\n- **document** its the document number of the `Customer`\n- **documentType** its the type of document supplied, it can be CC, CE or TI\n- **maxAmount** its the maximum amount that can be charged to the associated `DaviPlata`
    # @param [Hash] opts the optional parameters
    # @return [DaviPlata]
    def self.add_davi_plata(customer_id, body, opts = {})

      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling add_davi_plata" if customer_id.nil?

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_davi_plata" if body.nil?


      # resource path
      path = "/customer/{customer_id}/daviplata".sub('{format}', 'json').sub('{' + 'customer_id' + '}', customer_id.to_s)

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
      obj = DaviPlata.new() and obj.build_from_hash(response)
    end

    # Retrieve a DaviPlata by ID
    # Get the details of an existing `DaviPlata`. This method only requires an unique `DaviPlata` identifier `id` that was returned upon `DaviPlata` creation.
    # @param customer_id Identification of `Customer` associated with a `DaviPlata`
    # @param daviplata_id Identification of `DaviPlata` that needs to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [DaviPlata]
    def self.get_davi_plata_by_id(customer_id, daviplata_id, opts = {})

      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling get_davi_plata_by_id" if customer_id.nil?

      # verify the required parameter 'daviplata_id' is set
      raise "Missing the required parameter 'daviplata_id' when calling get_davi_plata_by_id" if daviplata_id.nil?


      # resource path
      path = "/customer/{customer_id}/daviplata/{daviplata_id}".sub('{format}', 'json').sub('{' + 'customer_id' + '}', customer_id.to_s).sub('{' + 'daviplata_id' + '}', daviplata_id.to_s)

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
      obj = DaviPlata.new() and obj.build_from_hash(response)
    end

    # Deletes a DaviPlata by ID
    # Deletes a `DaviPlata` when its `id` matches the parameter. Only available when `DaviPlata` does not have associated Charges.
    # @param customer_id Identification of `Customer` associated with a `DaviPlata`
    # @param daviplata_id Identification of `DaviPlata` to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.delete_davi_plata_by_id(customer_id, daviplata_id, opts = {})

      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling delete_davi_plata_by_id" if customer_id.nil?

      # verify the required parameter 'daviplata_id' is set
      raise "Missing the required parameter 'daviplata_id' when calling delete_davi_plata_by_id" if daviplata_id.nil?


      # resource path
      path = "/customer/{customer_id}/daviplata/{daviplata_id}".sub('{format}', 'json').sub('{' + 'customer_id' + '}', customer_id.to_s).sub('{' + 'daviplata_id' + '}', daviplata_id.to_s)

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

    # Verifies the ownership of the associated DaviPlata
    # This method requires two parameters. One is the unique `DaviPlata` identifier `id` that was returned upon `DaviPlata` creation. the second parameter is a six digit pin code `pinNumber` obtained through a SMS from the service provider of `DaviPlata`. Its  used to validate the ownership of the associated `DaviPlata`
    # @param body it has two fields\n- **daviPlata** which is the Identification of the `DaviPlata` to verify\n- **pinNumber** which is a Six digit pin code used to validate `DaviPlata` as a payment method.
    # @param [Hash] opts the optional parameters
    # @return [DaviPlata]
    def self.verify_davi_plata(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling verify_davi_plata" if body.nil?


      # resource path
      path = "/daviplata/verify".sub('{format}', 'json')

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
      obj = DaviPlata.new() and obj.build_from_hash(response)
    end
  end
end
