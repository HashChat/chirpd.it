class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
    @title = "messages"
  end
  
  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to messages_path, :flash => { :success => "Message creation success!" }
    else
      flash.now[:alert] = "Message creation faliure!"
      render 'new'
    end 
  end
end
