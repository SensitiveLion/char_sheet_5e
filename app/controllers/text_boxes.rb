class TextBoxesController < ApplicationController
  def index
  end

  def create
    @text_boxes = TextBox.new(text_boxes_params)
    @text_boxes.user = current_user
    if @text_boxes.save
      flash[:notice] = "you have added a new Character!"
    else
      render :new
    end
  end

  protected

  def text_boxes_params
      params.require(:text_boxes).permit(:name, :text_box)
  end
end
