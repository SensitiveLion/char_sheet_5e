class AttacksController < ApplicationController
  def index
  end

  def create
    @attack = Attack.new(attack_params)
    @attack.user = current_user
    if @attack.save
      flash[:notice] = "you have added a new Character!"
    else
      render :new
    end
  end

  protected

  def attack_params
      params.require(:attack).permit(:name)
  end
end
