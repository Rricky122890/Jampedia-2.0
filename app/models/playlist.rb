class Playlist < ApplicationRecord
  belongs_to :user
  has_many :adds
  has_many :songs, through: :adds
end