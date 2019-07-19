    require 'pry'
    
    class Artist
        
        attr_reader :name, :songs, :genres  
        @@all = []
        def initialize (name)
            @name = name 
          
            @@all << self 
        end

        def self.all
            @@all
        end 

        def new_song(name, genre)
            Song.new(name, self, genre)
            
         
            #takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
            #execute a Song.new but also define the instance's artist to 'self' 
            
        end

        def songs
          Song.all.select {|song| song.artist == self} 
           
        end

        def genres
            self.songs.map {|song| song.genre}
            
        end


    end
