class IndexController < ApplicationController
  def index
    @jokes = Joke.all
    @comments = Comment.all
  end
end