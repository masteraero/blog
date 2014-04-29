class WelcomeController < ApplicationController
  def index
  	if session['visited']
  		@first_visit = false
  	else
  		@first_visit = true
  	end
  	session['visited'] = true
  end
end
