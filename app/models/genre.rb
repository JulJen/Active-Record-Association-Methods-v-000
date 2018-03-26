require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre

    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
binding.pry
    names = []
    self.artists.map { |artist| artist.name }
    end
  end
  
end


# def get_genre_of_first_song
#   #return the genre of the artist's first saved song
#   self.songs.first.genre
# end
#
# def song_count
#   #return the number of songs associated with the artist
#   self.songs.count
#
# end
#
# def genre_count
#   #return the number of genres associated with the artist
#   self.genres.count
# end
# end
