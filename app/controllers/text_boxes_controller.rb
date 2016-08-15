class TextBoxesController < ApplicationController
  before_action :authenticate_user!

  def create
    @text_boxes = TextBox.new(text_boxes_params)
    if params["text_box"]["character_id"].nil?
      @character = params["character"]
    else
      @character = Character.find(params["text_box"]["character_id"])
    end
    @text_boxes.character = @character
    if @text_boxes.save
      flash[:notice] = "you have added #{params["text_box"]["name"]}!"
      redirect_to character_path(@character)
    else
      flash[:notice] = "you have fail to add #{params["text_box"]["name"]}!"
      redirect_to character_edit_path(@character)
    end
  end

  def update
    @text_box = TextBox.find(params[:id])
    if @text_box.update(text_boxes_params)
      flash[:notice] = "you have successfully updated your character!"
      redirect_to character_path(@text_box.character)
    else
      flash[:notice] = "failed to update your character"
      render :edit
    end
  end

  protected

  def text_boxes_params
      params.require(:text_box).permit(:name, :text_box)
  end
end
