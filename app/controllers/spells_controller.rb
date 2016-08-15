class SpellsController < ApplicationController
  before_action :authenticate_user!

  def create
    @spell = Spell.new(spell_params)
    if params["spell"]["character_id"].nil?
      @character = params["character"]
    else
      binding.pry
      @character = Character.find(params["spell"]["character_id"])
    end
    @spell.character = @character
    if @spell.save
      flash[:notice] = "you have added a new Character!"
      redirect_to character_path(@character)
    else
      flash[:notice] = "no"
      redirect_to character_path(@character)
    end
  end

  def update
    @spell = Spell.find(params[:id])
    if @spell.update(spell_params)
      flash[:notice] = "you have successfully updated your character!"
      redirect_to character_path(@spell.character)
    else
      flash[:notice] = "failed to update your character"
      render :edit
    end
  end

  protected

  def spell_params
      params.require(:spell).permit(
          :level, :name, :type, :casting_time, :range, :components,
          :duration, :description
          )
  end
end
