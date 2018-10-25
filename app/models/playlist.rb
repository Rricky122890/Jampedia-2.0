class Playlist < ApplicationRecord
  belongs_to :user
  has_many :adds
  has_many :songs, through: :adds

  validates :name, presence: true  

  def add(song)
    self.songs << song 
  end
end


