require 'active_merchant'
require 'active_support/core_ext/enumerable.rb'
require './account-credentials.rb'

gateway = ActiveMerchant::Billing::AuthorizeNetGateway.new(
  :login => AUTHORIZE_NET[:login],
  :password => AUTHORIZE_NET[:password]
)

reference_transactions = [
  1234567890 # Replace this with the Transaction IDs you want to void
]

reference_transactions.each do |reference_transaction|
  puts "## Voiding #{reference_transaction}"
  puts gateway.void(reference_transaction).success?
end
