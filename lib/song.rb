require 'pry'
class Song
    attr_accessor :name, :artist, :genre # creating read/write methods for object attributes

    @@count= 0 # creating a class variable to count every initialized object
    @@genres = [] # creating a class variable to store each instance's genre to an array
    @@artists = [] #creating a class variable to store each instance's artist to an array

    def initialize(name,artist,genre) # Create an object and provide 3 arguments
        @name = name # set name instance variable to name param
        @artist = artist # set artist instance variable to name param
        @genre = genre #  set genre instance variable to name param

        @@count += 1
        @@genres << genre
        @@artists << artist
        # @@all_song_data << self
    end

    def self.genres # Class method we call to perform an action on instance data
        @@genres.uniq # Here is where we'll filter for duplicates in @@genres

    end

    def self.artists # See line 20, but apply it to artists
        @@artists.uniq
    end
    def self.count # Class method used to store the number of songs
        @@count
    end
   # binding.pry: @@genres=> ["rap", "rap", "pop"]

    # what we want: {"rap" => 5, "rock" => 1, "country" => 3}
    # Currently: Array of Genres stored in @@genres and 
    def self.genre_count
        genre_count= Hash.new(0)
        @@genres.each do |genre|
            genre_count[genre] += 1
        end
        
        genre_count
    end

    def self.artist_count
        artist_count=Hash.new(0) # create a hash in which to store key value pairs
        @@artists.each do |artist| # for each artist, increment the value by 1
            artist_count[artist] += 1
            # binding.pry
  
        end
        artist_count
    end
  
end