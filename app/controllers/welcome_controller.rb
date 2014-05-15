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

    @say_hi_password = params['my_password']
    right_password = "password"
    if @say_hi_password == right_password
      puts "You put in right password"
      current_user.admin = true
      current_user.save
    end
    redirect_to(welcome_path)
  end
  def select_theme
    #pull the color from the params
        color_choice = params['color']
        #create theme for user, if they don't have one
        if !current_user.theme
          current_user.theme = Theme.new
        end
        #update the useres theme with the new color
        current_user.theme.color = color_choice
        current_user.theme.save
    redirect_to(welcome_path, notice: "Your theme has changed")
  end
end
