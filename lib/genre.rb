class Genre
    attr_reader :name, :songs, :artists
    @@all = []
    
    def self.all
        @@all 
    end

    def initialize(name)
        @name = name
        @@all << self 
    
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.map{|song| song.artist} 
    end


end
