class PortfolioController < ApplicationController
  def index
  end

  def gallery
  	@image_names = ['IMG_01','IMG_02','IMG_03','IMG_04']
  end
end
