# Create the base module
module Tpaga 

# Swagger common files
require 'tpaga/monkey.rb'
require 'tpaga/swagger.rb'
require 'tpaga/swagger/configuration.rb'
require 'tpaga/swagger/request.rb'
require 'tpaga/swagger/response.rb'
require 'tpaga/swagger/version.rb'


# Models
require 'tpaga/models/customer.rb'
require 'tpaga/models/address.rb'
require 'tpaga/models/creditcard.rb'
require 'tpaga/models/creditcardcreate.rb'
require 'tpaga/models/billingaddress.rb'
require 'tpaga/models/charge.rb'
require 'tpaga/models/city.rb'


# APIs
require 'tpaga/api/charge_api.rb'
require 'tpaga/api/customer_api.rb'


end
