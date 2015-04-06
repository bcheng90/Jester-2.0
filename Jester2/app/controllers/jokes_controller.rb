# TODO: Change to rails controller
class JokesController < ApplicationController
  def show
    @joke = Joke.find_by(id: params[:id])
  end
end
