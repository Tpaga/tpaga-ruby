TPaga ruby
===

TPaga ruby gem provides the functionality to call the multiple services of the TPaga platform.

Installation
---

To install as a gem in your environment type:

```sh
gem install tpaga
```

If you want to use in your rails application, add to your Gemfile:

```ruby
gem 'tpaga'
```

And run from your application directory:

```sh
bundle install
```

Configuration
---

If you are going to run tpaga in a rails environment add to the environment file (ex: `environments/development.rb`) the following lines:

```ruby
  config.tpaga_schema    = 'https'
  config.tpaga_host      = 'sandbox.tpaga.co'
  config.tpaga_base_path = '/api'
  config.tpaga_api_key   = 'd13fr8n7vhvkuch3lq2ds5qhjnd2pdd2'
```

using the respective api key for your TPaga user.

Next add the the file `tpaga.rb` to the rails initializers(ex: `initializers/tpaga.rb`) with he following lines:

```ruby
require 'tpaga'

Tpaga::Swagger.configure do |config|
  config.scheme        = Rails.application.config.tpaga_schema
  config.host          = Rails.application.config.tpaga_host
  config.base_path     = Rails.application.config.tpaga_base_path
  config.api_key       = Rails.application.config.tpaga_api_key
  config.inject_format = false
end
```

if you are not using rails, just simply initialize the service with the lines in the tpaga initializer before you call any service of the api.

Managing customers
---

You can create a customer:

```ruby
# if outside from rails
require 'tpaga'

# creating a tpaga customer object
customer = Tpaga::Customer.new(
  firstName: 'foo',
  lastName:  'bar',
  email:     'foo@bar.com',
  phone:     '0000000000',
  gender:    'M'
)

# call of the service to create the customer in the TPaga account
customer = Tpaga::CustomerApi.create_customer customer
customer.id # The unique identifier of the customer in the TPaga account
# if the request cannot be completed, raise a generic error
```

Get a customer by it's id:

```ruby
customer = Tpaga::CustomerApi.get_customer_by_id 'id'
# returns a Tpaga::Customer object, raise error if not
```

Delete a customer by it's id:

```ruby
response = Tpaga::CustomerApi.delete_customer_by_id 'customer_id'
# return nil if success, raise an error if not
```
Managing credit cards
---

You can add a credit card to an existing customer:

```ruby
# build the credit card object to create
credit_card_create = Tpaga::CreditCardCreate.new(
  primaryAccountNumber: '4111111111111111',
  expirationMonth:      '08',
  expirationYear:       '2019',
  cardVerificationCode: '789',
  cardHolderName:       'Jon Snow',
  billingAddress:       Tpaga::BillingAddress.new
)

credit_card = Tpaga::CreditCardApi.add_credit_card 'customer_id', credit_card_create
# returns a Tpaga::CreditCard object, raise error if not
```

you can get the credit card of a customer:

```ruby
credit_card = Tpaga::CreditCardApi.get_credit_card_by_id 'customer_id', 'credit_card_id'
# return a Tpaga::CreditCard object, raise error if not
```

You can delete the credit card of a customer:

```ruby
Tpaga::CreditCardApi.delete_credit_card_by_id 'customer_id', 'credit_card_id'
# return nil if success, raise error if not
```

You can add a credit card charge:

```ruby
# build the charge object
charge = Tpaga::CreditCardCharge.new(
  amount:       10000,
  taxAmount:    10000 * 0.1,
  currency:     'COP',
  orderId:      'Your identifier for the order',
  installments: 1,
  description:  'A new leash for ghost',
  creditCard:   'credit_card_id'
)

charge = Tpaga::CreditCardApi.add_credit_card_charge charge
# return a Tpaga::CreditCardCharge object, raise error if not
```

Retrieve a charge:

```ruby
charge = Tpaga::CreditCardApi.get_credit_card_charge_by_id 'charge_id'
# return a Tpaga::CreditCardCharge object, raise error if not
```
