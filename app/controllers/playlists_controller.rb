class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
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
