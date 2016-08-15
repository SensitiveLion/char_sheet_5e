class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @players = @game.game_users
    @characters = @game.characters

    @game_user = GameUser.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      flash[:notice] = "you have added a new game!"
      redirect_to @game
    else
      render :new
    end
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      flash[:notice] = "you have successfully edited the game!"
      redirect_to @game
    else
      flash[:notice] = "failed to update game"
      render :edit
    end
  end

  def destroy
    @game = Game.find_by!(user: current_user, id: params[:id])
    @game.destroy
    flash[:notice] = 'game deleted.'
    redirect_to homes_path
  end
  protected

  def game_params
    params.require(:game).permit(:name, :description)
  end
end
