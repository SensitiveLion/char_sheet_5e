class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])
    @players = @game.users
    @characters = @game.characters
  end
end
