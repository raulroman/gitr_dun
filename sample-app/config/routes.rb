Rails.application.routes.draw do
  get '/hello' => 'pages#hello'
end

Rails.application.routes.draw do
  get '/next_url' => 'pages#next_url'
end