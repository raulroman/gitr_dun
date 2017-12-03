require "unirest"

p "Top Fantasy Football Articles"


article_response = Unirest.get("https://www.reddit.com/r/Fantasy_Football/.json")

articles = article_response.body["data"]["children"]

i = 0
articles.length.times do
  p "#{i}. #{articles[i]['data']['title']}"
  i += 1

end

p "Choose an article"
index_of_article = gets.chomp.to_i

comments_link = articles[index_of_article]['data']['permalink']


comments_response = Unirest.get("https://www.reddit.com#{comments_link}.json")

comments = comments_response.body[1]['data']['children'][0]['data']['replies']['data']['children'][0]['data']['replies']['data']['children']

comments.each do |comment|
  p comment['data']['body']
end







