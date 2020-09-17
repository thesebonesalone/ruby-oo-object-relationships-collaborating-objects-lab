

class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end

    def songs
        Song.all.select {|songs| songs.artist == self}
    end
    def add_song(song)
        song.artist = self
    end
    def  self.find_or_create_by_name(name)
        artist = self.all.select { |value| value.name == name}
        if artist.length == 0
            artist[0] = Artist.new(name)
        end
        
        artist[0]
    end
    def print_songs
        list = self.songs
        list.each do |value|
            puts value.name
        end

    end









end
