class Song < ApplicationRecord
  has_many :adds
  has_many :playlists, through: :adds
end
