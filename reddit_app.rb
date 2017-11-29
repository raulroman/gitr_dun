require "unirest"

p "Top Fantasy Football Articles"


response = Unirest.get("https://www.reddit.com/r/Fantasy_Football/.json")

p articles = response.body["data"]["children"]

articles = 


[0]["data"]["title"]
