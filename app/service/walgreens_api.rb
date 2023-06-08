require 'http'
require 'json'

class WalgreensApi
  def initialize
    @base_url = 'https://services-qa.walgreens.com/api/stores/search/v2'
    @headers = { "Content-Type" => "application/json" }
    @api_key = 'RqTxG01yKopt39SgtfaGK7voorN5PtTG'
  end

  def get_pharmacies(zip_code)
    data = { "apiKey" => @api_key, "address" => zip_code }

    response = HTTP.headers(@headers).post(@base_url, :json => data)

    if response.status.success?
      JSON.parse(response.body.to_s)
    else
      { error: "Request failed with status #{response.status}" }
    end
  end
end




# API Key: RqTxG01yKopt39SgtfaGK7voorN5PtTG



# /Users/nasser/Desktop/Limit_meet/pharmacy_locator/app/service/app/services/walgreens_api.rb
# /Users/nasser/Desktop/Limit_meet/pharmacy_locator/app/service/walgreens_api.rb