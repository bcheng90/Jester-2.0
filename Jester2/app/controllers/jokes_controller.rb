# TODO: Change to rails controller
class JokesController < ApplicationController
  def show
    @joke = Joke.find_by(id: params[:id])
  end

  def new
    @new_joke = Joke.new
  end

  def edit
    @joke = Joke.find_by(id: params[:id])
  end

  def create
    # TODO: Fix new joke
    new_joke = Joke.new(joke_params)
    if new_joke.save
      redirect_to "/jokes/#{new_joke.id}"
    else
      [404, "WHY SO SERIOUS?"]
    end
  end

  def update

  end

  def destroy

  end

  private

  def joke_params
    params.require(:joke).permit(:line1, :line2).merge(user_id: current_user.id)
  end
end
