Attempts to void a batch of Authorize.net Transactions.

## Installation Instructions
1. Clone the project
2. `bundle install`
3. `cp account-credentials.rb.example account-credentials.rb`
4. Add your API credentials to account-credentials.rb

## Usage Instructions
1. Add the reference transaction ids of the transactions you wish to void to the array `reference_transactions` in void-transactions.rb.
2. `ruby void-transactions.rb`
