module ApplicationHelper
  def time(input)
    sec = (Time.now.to_i - input.created_at.to_i)
    if sec < 60
      "#{sec} seconds"
    elsif sec < 3600
      minutes = sec / (60)
      "#{minutes} minutes"
    elsif sec < 86400
      hours = sec / (60*60)
      "#{hours} hours"
    elsif sec < 604800
      days = sec / (60*60*24)
      "#{days} days"
    elsif sec < 31536000
      weeks = sec / (7*60*60*24)
      "#{weeks} weeks"
    else
      years = sec / (52*7*60*60*24)
      "#{years} years"
    end
  end
end
