class PortfolioController < ApplicationController
  def index
  	@projects = Project.all
  end

  def gallery
  	# @image_names = ['IMG_01','IMG_02','IMG_03','IMG_04']
  	@images = Image.all # [image_records]
  end
end
