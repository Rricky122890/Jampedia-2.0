class Song < ApplicationRecord
  has_many :adds
  has_many :playlists, through: :adds

  belongs_to :artist
  belongs_to :genre 
end
