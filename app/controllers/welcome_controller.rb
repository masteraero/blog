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
    @say_hi_password = params['my_password']
    right_password = "password"
    if @say_hi_password == right_password
      puts "You put in right password"
      current_user.admin = true
      current_user.save
    end
    redirect_to(welcome_path)
  end
end
