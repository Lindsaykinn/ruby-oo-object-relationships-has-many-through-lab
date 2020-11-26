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
        Song.all.select {|song| song.artist == self}
    end

    #new_song does not work without the #genres method
    def new_song(name, genre)
        Song.new(name, self, genre)

    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
   
end
