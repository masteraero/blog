class Image < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
	:storage => :s3, :bucket => 'blog1234567', 
	:s3_credentials => {
         :access_key_id => ENV['AKIAIAZF5Q3QKJAZVPHQ'],
         :secret_access_key => ENV['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']
       }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
