


class MP3Importer
    attr_accessor :path
    def initialize(path)
        @path = path
    end
    def files
        new_array = Dir.entries(@path)
        new_array.delete_if { |file_name| file_name == "." || file_name == ".."}
        new_array
    end
    def import
        self.files.each {|song| Song.new_by_filename(song)}
    end


end
