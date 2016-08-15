class SpellCastingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @spell_casting = SpellCasting.new(spell_casting_params)
    if params["spell_casting"]["character_id"].nil?
      @character = params["character"]
    else
      @character = Character.find(params["spell_casting"]["character_id"])
    end
    @spell_casting.character = @character
    if @spell_casting.save
      flash[:notice] = "you have added a new Character!"
      redirect_to character_path(@character)
    else
      flash[:notice] = "nope!"
      redirect_to character_path(@character)
    end
  end

  def update
    @spell_casting = SpellCasting.find(params[:id])
    if @spell_casting.update(spell_casting_params)
      flash[:notice] = "you have successfully updated your character!"
      redirect_to character_path(@spell_casting.character)
    else
      flash[:notice] = "failed to update your character"
      render :edit
    end
  end

  protected

  def spell_casting_params
    params.require(:spell_casting).permit(
      :spell_casting_class, :casting_ability, :spell_dc, :spell_atk,
      :lv1_slots, :lv2_slots, :lv3_slots, :lv4_slots, :lv5_slots,
      :lv6_slots, :lv7_slots, :lv8_slots, :lv9_slots
      )
  end
end
