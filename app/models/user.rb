class User < ApplicationRecord

  has_many :playlists
  has_many :adds, through: :playlists

  validates :name , presence: true, uniqueness: true
end
