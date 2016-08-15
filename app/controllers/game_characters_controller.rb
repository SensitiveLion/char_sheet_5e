class GameCharactersController < ApplicationController
  before_action :authenticate_user!
  def new
    @game = Game.find(params[:game_id])
    @character = Character.where(user: current_user)
    @game_character = GameCharacter.new
  end

  def create
    @game_character = GameCharacter.new(gc_params)
    @game = Game.find(params[:game_character][:game])
    @character = Character.find(params[:game_character][:character])
    @game_character.game = @game
    @game_character.character = @character
    if @game_character.save
      flash[:notice] = "character added to game"
      redirect_to game_path(@game)
    else
      binding.pry
      flash[:notice] = "character not added to game"
      render :new
    end
  end

  def gc_params
    params.require(:game_character).permit(:game_id, :character_id)
  end
end
