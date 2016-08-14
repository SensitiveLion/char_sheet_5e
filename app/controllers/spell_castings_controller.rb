class SpellCastingsController < ApplicationController
  def index
  end

  def create
    @spell_casting = SpellCasting.new(spell_casting_params)
    @spell_casting.user = current_user
    if @spell_casting.save
      flash[:notice] = "you have added a new Character!"
      redirect_to @spell_casting
    else
      render :new
    end
  end

  protected

  def spell_casting_params
      params.require(:spell_castings).permit(:name)
  end
end
