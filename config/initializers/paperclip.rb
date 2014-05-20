require "paperclip"  
Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-6.8.9-Q16' 
Paperclip.options[:swallow_stderr] = false
Paperclip::Attachment.default_options[:url] = ':blog1234567.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'