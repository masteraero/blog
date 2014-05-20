require "paperclip"  
Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-6.8.9-Q16' 
Paperclip.options[:swallow_stderr] = false
Paperclip::Attachment.default_options[:s3_host_name] = 'blog1234567.s3-website-us-east-1.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'