class SongsController < ApplicationController

  def index
    @songs = Song.all
    @add = Add.new
  end
end
