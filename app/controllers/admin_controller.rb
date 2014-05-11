class AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_user
  def page_one
  end

  def page_two
  end

  def admin_user
    if current_user.admin != true
      redirect_to(welcome_path, alert:"You're not an admin")
    end
  end
end
