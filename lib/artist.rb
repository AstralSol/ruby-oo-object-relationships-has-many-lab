class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}  # returns songs by artist 
    end

    def add_song(song)
        song.artist = self  # takes in argument of song an links song to owner/artist
    end

    def add_song_by_name(name)
        song = Song.new(name)  # takes in argument of a song name, creates new with song an artist info
        song.artist = self
    end

    def self.song_count  # class method that returns total nunmber of songs by each artist
        Song.all.count
    end
end