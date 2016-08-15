class GameUsersController < ApplicationController
  before_action :authenticate_user!
  def create
    @find_user = User.find_by(username: params[:game_user][:user_id])
    if @find_user.nil?
      flash[:notice] = "user could not be found"
      redirect_to game_path(params[:game_user][:game_id])
    else
      @game_user = GameUser.new(gu_params)
      @game = Game.find(params[:game_user][:game_id])
      @game_user.user_id = @find_user.id
      @game_user.game_id = @game.id
      if @game_user.save
        flash[:notice] = "user added to game"
        redirect_to game_path(@game)
      else
        flash[:notice] = "user not added to game"
        redirect_to game_path(@game)
      end
    end
  end


  def update
    @user = GameUser.find(params[:id])
    if @user.role == "player"
      @user.role = "dm"
    elsif @user.role == "dm"
      @user.role = "player"
    end
    @user.save
    redirect_to game_path(@user.game)
  end

  def gu_params
    params.require(:game_user).permit(:user_id)
  end

end
