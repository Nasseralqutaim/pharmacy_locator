require "http"
require "json"

headers = {
  "Content-Type" => "application/json"
}

data = {
  "apiKey" => "RqTxG01yKopt39SgtfaGK7voorN5PtTG",
  "address" => "60657" 
}

response = HTTP.headers(headers).post("https://services-qa.walgreens.com/api/stores/search/v2", :json => data)

# you need to check the response status code
if response.status.success?
  response_data = JSON.parse(response.body)
  pp response_data["results"][0]["store"]

else
  puts "Request failed with status #{response.status}"
end










# Walgreens API Key: RqTxG01yKopt39SgtfaGK7voorN5PtTG