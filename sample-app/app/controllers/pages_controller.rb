class PagesController < ApplicationController

  def hello
    render json: {message: "hey", say: "hello"}
  end
  
end
