class PlaylistsController < ApplicationController

  def index

    @user = User.find(params[:user_id])
    @playlists = @user.playlists
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
    # byebug
    @songs = Song.all
  end

  def create
    byebug
    @playlist = Playlist.new(playlist_params)
    @playlist.user_id = session[:user_id]
    if @playlist.valid?
      @playlist.save
      redirect_to @playlist
    else
      render :new
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end

end
