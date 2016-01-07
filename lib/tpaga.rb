# Swagger common files
require 'tpaga/monkey'
require 'tpaga/swagger'
require 'tpaga/swagger/configuration'
require 'tpaga/swagger/request'
require 'tpaga/swagger/response'
require 'tpaga/swagger/version'

# Models
require 'tpaga/models/base_object'
require 'tpaga/models/city'
require 'tpaga/models/address'
require 'tpaga/models/customer'
require 'tpaga/models/credit_card'
require 'tpaga/models/credit_card_create'
require 'tpaga/models/credit_card_refund'
require 'tpaga/models/billing_address'
require 'tpaga/models/credit_card_charge'
require 'tpaga/models/davi_plata'
require 'tpaga/models/davi_plata_charge'
require 'tpaga/models/davi_plata_chargeback'
require 'tpaga/models/davi_plata_verification'
require 'tpaga/models/api_errors_item'
require 'tpaga/models/api_error'
require 'tpaga/models/token'

# APIs
require 'tpaga/api/chargeback_api'
require 'tpaga/api/customer_api'
require 'tpaga/api/davi_plata_api'
require 'tpaga/api/charge_api'
require 'tpaga/api/credit_card_api'
require 'tpaga/api/refund_api'
require 'tpaga/api/token_api'

module Tpaga
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
