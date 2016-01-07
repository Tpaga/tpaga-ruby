require "uri"

module Tpaga
  class TokenApi
    basePath = "https://sandbox.tpaga.co/api"

    # Adds a new Credit Card payment method to the Customer
    # Creates a new `CreditCard` and associates it to the `Customer`
    # @param customer_id Identificaiton of `Customer` to associate the new `CreditCard`
    # @param body The `Token` object which representes the `CreditCard` to be associated to the `Customer`\n- **token** the identification of the token which represents the `CreditCard`.
    # @param [Hash] opts the optional parameters
    # @return [CreditCard]
    def self.add_credit_card_token(customer_id, body, opts = {})
      
      # verify the required parameter 'customer_id' is set
      raise "Missing the required parameter 'customer_id' when calling add_credit_card_token" if customer_id.nil?
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling add_credit_card_token" if body.nil?
      
      # resource path
      path = "/customer/{customer_id}/credit_card_token".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = ['api_key']
      response = Swagger::Request.new(:POST, path,
        {:params => query_params,
        :headers => header_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names}).make.body
      obj = CreditCard.new() and obj.build_from_hash(response)
        

    end
  end
end




