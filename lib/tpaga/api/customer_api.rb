require "uri"

module Tpaga
  class CustomerApi
    basePath = "https://sandbox.tpaga.co/api"
    # apiInvoker = APIInvoker

    # Add a new Customer to the Merchant
    # Creates a new `Customer` associated to the Merchant. There are no mandatory parameters to create the `Customer`, but filling all the fields is highly recomended.
    # @param body Customer object to be added to the Merchant, it has the following fields\n- **id** its the id of the `Customer` thats going to be generated after creation.\n- **firstName** which is the `Customer`&#39;s first name.\n- **lastName** which is the `Customer`&#39;s last name.\n- **gender**  of the `Customer` which can be Male (M), Female (F) or Not Available (N/A)\n- **address** which is the `Customer`&#39;s home address.\n- **email** which is the `Customer`&#39;s e-mail address with proper formatting ( i. e. email@example.com)\n- **phone**  which is the `Customer`&#39;s phone number
    # @param [Hash] opts the optional parameters
    # @return [Customer]
    def self.create_customer(body, opts = {})

      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling create_customer" if body.nil?


      # resource path
      path = "/customer".sub('{format}', 'json')

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
      obj = Customer.new() and obj.build_from_hash(response)
    end

    # Retrieve a Customer by ID
    # Get the details of an existing `Customer`. This method only requires an unique `Customer` identifier `id` that was returned upon `Customer` creation.
    # @param id Identification of `Customer` to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [Customer]
    def self.get_customer_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_customer_by_id" if id.nil?


      # resource path
      path = "/customer/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

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
      obj = Customer.new() and obj.build_from_hash(response)
    end

    # Deletes a Customer by ID
    # Deletes a `Customer` when its `id` matches the parameter. Only available when `Customer` does not have associated payment methods.
    # @param id Identification of customer to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.delete_customer_by_id(id, opts = {})

      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling delete_customer_by_id" if id.nil?


      # resource path
      path = "/customer/{id}".sub('{format}', 'json').sub('{' + 'id' + '}', id.to_s)

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
