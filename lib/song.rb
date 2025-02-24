class Song 
#class variables
    @@count=0
    @@genres=[]
    @@artists=[]

    attr_accessor:name,:artist,:genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count+=1

    end
#self.count refers to the entire class itself
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count={}
        @@artists.each do |artist|
#             check if artist is in the hash
            if artist_count[artist] 
                artist_count[artist]+=1
            else 
                artist_count[artist] = 1
            end 
        end
        artist_count
    end

    
    def self.genres
        @@genres.uniq
      end
    
      def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end
end
