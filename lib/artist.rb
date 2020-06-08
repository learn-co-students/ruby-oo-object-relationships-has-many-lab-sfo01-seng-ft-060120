
class Artist 

  attr_accessor :name, :song

    def initialize(name)
      @name = name
    end
    # savage = Song.new("Savage")
    def add_song(song)
        song.artist = self
    end
# we know that self == "adele" so we want to store it in song.artist
# savage.artist = megan
    def songs 
      Song.all.select{|song| add_song(song)}.to_a
      # binding.pry
    end
   
    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end
#  this means that, we want to add the song's name to our artist
#  add_song(arg) uses its method to pass in our song_name and add it to the song id obj.

    def self.song_count
        Song.all.length
        # this gives us the total number of songs that we have made so far
    end
end