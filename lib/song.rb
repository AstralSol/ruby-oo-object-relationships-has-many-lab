class Song
    attr_accessor :name, :artist

        @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name         # returns artist name if any
        artist.name if artist
    end
end