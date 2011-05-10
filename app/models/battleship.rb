class Battleship < ActiveResource::Base

  self.site = INTEGRATION_CONFIG[Rails.env]['battleship']['endpoint_url']

  def image_path
  	if self.image_file_name.nil?
      INTEGRATION_CONFIG[Rails.env]['battleship']['image_default_url']
	else
	  extension = File.extname(self.image_file_name)
	  base = INTEGRATION_CONFIG[Rails.env]['battleship']['image_base_url']
	  "#{base}/#{id}/thumb#{extension}"
    end
  end

end
