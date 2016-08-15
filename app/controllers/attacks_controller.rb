class AttacksController < ApplicationController
  before_action :authenticate_user!

  def create
    @attack = Attack.new(attack_params)
    if params["text_box"]["character_id"].nil?
      @character = params["character"]
    else
      @character = Character.find(params["text_box"]["character_id"])
    end
    @attack.character = @character
    if @attack.save
      flash[:notice] = "you have added a new Character!"
      redirect_to character_path(@character)
    else
      flash[:notice] = "nope"
      redirect_to character_path(@character)
    end
  end

  protected

  def attack_params
      params.require(:attack).permit(:name, :attack, :damage)
  end
end
