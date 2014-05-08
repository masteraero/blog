class AdminController < ApplicationController
  before_filter :authenticate_user!
  def page_one
  end

  def page_two
  end
end
