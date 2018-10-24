class User < ApplicationRecord

  has_many :playlists
  has_many :adds, through: :playlists

end
