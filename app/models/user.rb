class User < ApplicationRecord
  has_many :playlists
  has_many :adds, through: :playlists

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }
  validates :username, presence: true, length: { minimum: 5 }, uniqueness: true

  def show_playlist

    if self.playlists.count < 1
      puts "You dont have any playlists"
    else
      self.playlists.each do |playlist|
        puts playlist
      end
    end

  end

end
