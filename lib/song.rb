require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists =[]
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists<< artist
        @@genres << genre  
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        map = {}
        @@genres.each do |item|
            if map[item]
                map[item] += 1
            else 
                map[item]=1    
            end
        end
        map
    end
    def self.artist_count
        map = {}
        @@artists.each do |item|
            if map[item]
                map[item] += 1
            else 
                map[item]=1    
            end
        end
        map
    end
end