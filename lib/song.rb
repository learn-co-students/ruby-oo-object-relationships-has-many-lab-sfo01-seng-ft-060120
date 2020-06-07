require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        if self.artist
            return self.artist.name
        else
            return nil
        end
    end

    def self.all
        @@all
    end


end