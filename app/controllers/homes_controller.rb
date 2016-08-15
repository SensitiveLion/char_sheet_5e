class HomesController < ApplicationController
  def index
    if current_user != nil
      @user = current_user
      @games = Game.where(user: @user)
      @user_games = GameUser.where(user_id: @user.id)
      @characters =  Character.where(user: @user)
    end
  end
end
