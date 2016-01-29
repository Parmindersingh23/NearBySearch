class Location < ActiveRecord::Base
	# attr_accessible :address, :latitude, :longitude
	def user_params
      params.require(:address).permit(:latitude, :longitude)
    end
	geocoded_by :address	
	after_validation :geocode

end
