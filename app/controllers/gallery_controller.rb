class GalleryController < ApplicationController
  def index
  	# @image_names = ['IMG_01','IMG_02','IMG_03','IMG_04']
  	@images = Image.all # [image_records]
  end

  def secret
  end
end
