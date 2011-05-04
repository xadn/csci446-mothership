class Shield < ActiveResource::Base

  self.site = INTEGRATION_CONFIG[Rails.env]['shield']['endpoint_url']

  def image_path
  	if self.photo_file_name.nil?
      INTEGRATION_CONFIG[Rails.env]['shield']['image_default_url']
	else
	  extension = File.extname(self.photo_file_name)
	  base = INTEGRATION_CONFIG[Rails.env]['shield']['image_base_url']
	  "#{base}/#{id}/thumb#{extension}"
    end
  end

end