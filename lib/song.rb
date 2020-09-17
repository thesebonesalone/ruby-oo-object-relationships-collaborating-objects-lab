require "pry"

class Song
    @@all = []
    attr_accessor :name, :artist

    def initialize(name, artist = nil)
        @name = name
        if artist != nil 
        @artist = artist
        end
        @@all << self

    end
    def self.all
        @@all
    end
    def self.new_by_filename(filename)
        song_array = filename.split(" - ")
        self.new(song_array[1],Artist.new(song_array[0]))
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        #binding.pry

    end
end
