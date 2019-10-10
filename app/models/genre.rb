class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.size
  end

  def artist_count

  end

  def all_artist_names
    # return an array of strings containing every musician's name
  end
end
