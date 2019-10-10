class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.all.size
  end

  def genre_count
    genres = []
    self.songs.all.each {|song| genres << song.genre}
    genres.uniq.size
  end
end
