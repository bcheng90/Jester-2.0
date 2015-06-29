class IndexController < ApplicationController
  def index
    @jokes_recent = Joke.recent
    # @jokes_popular = Joke.most_commented
    @comments = Comment.all
  end
end