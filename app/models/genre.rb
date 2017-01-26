class Genre < ActiveRecord::Base
	has_many :song_genres
	has_many :songs, through: :song_genres
    has_many :artists, through: :songs

	def slug 
  		self.name.downcase.split.join("-")
  	end

  	def self.find_by_slug(slug_name)
  	 	self.all.find{|instance| instance.slug == slug_name}
  	 end
end