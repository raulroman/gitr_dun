require "unirest"

while true

  p "Enter a word"
  user_input = gets.chomp

# Allows user to break out of loop by entering "q" as their word"

  if user_input == q
    break
  else

# Uses Unirest to get HTTP API data from the URL, sets it into a variable

    definition_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
    ")

    pronunciation_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
    ")

    top_example_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{user_input}/examples?includeDuplicates=false&useCanonical=false&skip=0&limit=5&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

# Converts HTTP responses to variables

    definition_response = definition_response.body
    pronunciation_response = pronunciation_response.body
    top_example_response = top_example_response.body

    #sends the information contained in the API into variables

    word_definition_response.body[0]["text"]
    word_pronunciation_response.body[0]["raw"]
    word_top_example_response.body['examples'][0]['text']

    p word_definition_response
    p word_pronunciation_response
    p word_top_example_response

  end
end
