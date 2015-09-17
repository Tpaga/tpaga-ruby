
module Tpaga
  class RefundApi

    basePath = "https://sandbox.tpaga.co/api"

    # Try to refund a CreditCardCharge to a Customer&#39;s CreditCard
    # Refunds a new `CreditCardCharge` that was successful to a `CreditCard`. It only can be done within the same day of the `CreditCardCharge`
    # @param body - **id** It is the id of the `CreditCardCharge` thats going to be refunded.
    # @param [Hash] opts the optional parameters
    # @return [CreditCardCharge]
    def self.refund_credit_card_charge(body, opts = {})

      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling refund_credit_card_charge" if body.nil?
      
      # resource path
      path = "/refund/credit_card".sub('{format}','json')

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
  end
end




