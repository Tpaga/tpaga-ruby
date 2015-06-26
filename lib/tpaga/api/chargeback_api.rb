require "uri"

module Tpaga
  class ChargebackApi
    basePath = "https://sandbox.tpaga.co/api"
    # apiInvoker = APIInvoker

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
  end
end
