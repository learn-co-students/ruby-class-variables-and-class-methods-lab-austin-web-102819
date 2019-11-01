class Song
    attr_accessor :name , :artist , :genre , :count

        @@count = 0
        @@artists = []
        @@genres = []
    
    def initialize (name, artist, genre)
            @name = name
            @artist = artist
            @genre = genre

        
            @@count += 1
            @@artists << artist
            @@genres << genre
          
    end


    def self.count 
    @@count
    end

    def self.artists
    @@artists.uniq
    end

    def self.genres
    @@genres.uniq
    end


def self.genre_count
    num_genre_hash={}

    @@genres.each do |genre| 

    if num_genre_hash[genre]
    num_genre_hash[genre] += 1

    else num_genre_hash[genre] = 1
    end

end
num_genre_hash
 end

    def self.artist_count
            artist_hash = {}

            @@artists.each do |artist|
        
         if artist_hash[artist] 
        artist_hash[artist] += 1
        else artist_hash[artist] = 1
        end
    end

    artist_hash
    end

       
        
end