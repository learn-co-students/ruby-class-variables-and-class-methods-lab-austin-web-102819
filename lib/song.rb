require "pry"


class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genre_count = {}
    @@artist_count = {}
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1    

        @@genres.push(genre) #if !@@genres.include?(genre)
        @@artists << artist
    end

    def self.genre_count
        # {"rap" => 5}
        Hash[@@genres.uniq.map do |i|
            [i, @@genres.count(i)]
            end]
    end

    def self.artist_count
        # {"Beyonce" => 17}
        Hash[@@artists.map{|a| [a, @@artists.count(a)]}]
        # binding.pry
    end
    
    def self.count
        @@count
    end

    def self.genres
        # ["pop", "jazz"]
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
end