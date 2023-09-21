require "pry"
class Song 

    attr_accessor :name 
    attr_accessor :artist
    attr_accessor :genre 

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre

        @@count += 1 
        @@genres << genre
        @@artists << artist
    end 
    
    @@count = 0
    def self.count
        @@count
    end 

    @@genres = []
    def self.genres
        @@genres.uniq
    end 

    @@artists = []
    def self.artists
        @@artists.uniq
    end 

    def self.genre_count 
        @@genres.tally
    end 

    def self.artist_count 
        @@artists.tally
    end 
end 
#binding.pry
