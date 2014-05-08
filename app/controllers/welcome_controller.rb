class WelcomeController < ApplicationController
  def index
    @counter = increment_counter
    @shown_message = "You've been here #{@counter} times"
  	if session['visited']
  		@first_visit = false
  	else
  		@first_visit = true
  	end
  	session['visited'] = true
  end
  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
  def say_hi
    session['color'] = params['my_color']
  end
end
