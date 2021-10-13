require "http"

response = HTTP.get("http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=THIS IS WHERE KEY GOES")

responses = response.parse(:json)

pp responses
