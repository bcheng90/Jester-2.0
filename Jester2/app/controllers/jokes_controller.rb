# TODO: Change to rails controller
class JokesController < ApplicationController
  def show
    @joke = Joke.find_by(id: params[:id])
  end

  def new
  end

  def create
    new_joke = Joke.new(line1: params[:line1], line2: params[:line2], user_id: current_user.id)
    if new_joke.save
      redirect "/jokes/#{new_joke.id}"
    else
      [404, "WHY SO SERIOUS?"]
    end
  end

end
