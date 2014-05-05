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
    @say_hi_name = params['my_name']
    @say_hi_password = params['my_password']
    right_password = 'password'
    right_user = 'aaron'
    if @say_hi_name == right_user && @say_hi_password == right_password
        session['admin'] = true
      else
        session['admin'] = false
    end
  end
  # def radio
  #   @purple = params['purple']
  #   @red = params['red']
  #   @yellow = params['yellow']
  #   @color = params['color']
  # end
end
