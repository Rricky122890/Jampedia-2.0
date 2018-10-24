class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @playlists = Playlist.find_by(params[:user_id])

    # @playlists = @user.playlists
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
# <<<<<<< HEAD
#
# =======
# >>>>>>> c2fee6747113d5d9ed24c7786bd76cefdcf0e4a3
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(params[:id])
    @user.update(user_params)
  end


  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
