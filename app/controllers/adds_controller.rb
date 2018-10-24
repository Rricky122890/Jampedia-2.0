class AddsController < ApplicationController

  def new
    @add = Add.new
  end

  def create
    @add = Add.new(add_params)
    if @add.valid?
      @add.save
      redirect_to controller: 'playlists', action: 'show', id: @add.playlist_id
    else
      render :new
    end
  end

  private

  def add_params
    params.require(:add).permit(:playlist_id, :song_id)
  end

end
