require "http"

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")

responses = response.parse(:json)

pp responses[0]["name"]

responses.each { |response|
  if response["name"] == "AARON,  JEFFERY M"
    p response["name"]
  end
}
