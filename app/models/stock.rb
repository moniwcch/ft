class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
  publishable_token: 'Tpk_defe89e2114541809778d1ca845e7244',
  endpoint: 'https://sandbox.iexapis.com/v1'
)
client.price(ticker_symbol)
    end
end
