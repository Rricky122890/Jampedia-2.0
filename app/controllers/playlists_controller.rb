class PlaylistsController < ApplicationController

  def index
    # byebug
    @user = User.find(params[:user_id])
    @playlists = @user.playlists
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.valid?
      @playlist.save
      redirect_to @playlist
    else
      render :new
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :user_id)
  end

end
