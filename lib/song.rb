class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
 def initialize(name, artist, genre) 
   @name = name
   @artist = artist
   @@artists << artist
   @genre = genre
   @@genres << genre
   @@count += 1
 end
 
 def self.count
   @@count
 end
 
 def self.genres
    @@genres.uniq
  end
  
   def self.artist
    @@artists.uniq
  end
 
 
# if genre_count of key "genre" exists
#    then increment it's count (the value of the key value pair) by one. 
# else (if genre_count of key "genre" is nil, or falsey, aka it doesn't exist)#
#		then CREATE the value/key pair for that genre and set it to one.
  
  def self.genre_count
   genre_count = {}
	 @@genres.each do |genre|
	    if genre_count[genre] 
			   genre_count[genre] += 1
			else
			   genre_count[genre] = 1
			end
			
	end
	genre_count
	end
	
	
	
	
 
end