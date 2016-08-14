class SpellsController < ApplicationController
  def index
  end

  def create
    @spell = Spell.new(spell_params)
    @spell.user = current_user
    if @spell.save
      flash[:notice] = "you have added a new Character!"
    else
      render :new
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
