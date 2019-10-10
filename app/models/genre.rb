class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.size
  end

  def artist_count
    artists = []
    self.songs.all.each {|song| artists << song.artist}
    artists.uniq.size
  end

  def all_artist_names
    artist_names = []
    self.songs.all.each {|song| artist_names << song.artist.name}
    artist_names.uniq
  end
end
