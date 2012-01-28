class MessagesController < ApplicationController
  def index
    @messages = Messages.all
  end

  def create
    @message = Messages.create!(params[:message])
  end
end
