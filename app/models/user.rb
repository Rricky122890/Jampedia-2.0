class User < ApplicationRecord
  has_many :playlists
  has_many :adds, through: :playlists

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :name , presence: true, uniqueness: true
end
