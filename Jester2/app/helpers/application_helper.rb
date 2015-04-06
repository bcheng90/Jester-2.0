module ApplicationHelper
  def current_user
    if session[:user_id]
      return User.find(session[:user_id])
    else
      return nil
    end
  end

  def time(input)
    sec = (Time.now.to_i - input.created_at.to_i)
    days = sec / (60*60*24)
  end
end
