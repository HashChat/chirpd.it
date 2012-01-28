class HashtagsController < ApplicationController
  
  def index
    @hashtags = Hashtag.all
  end

  def new
    @hashtag  = Hashtag.new
    @title = "new hashtag"
  end
  
  def create
    @hashtag = Hashtag.new(params[:hashtag])
    if @hashtag.save
      redirect_to hashtags_path, :flash => { :success => "Hashtag creation success!" }
    else
      flash.now[:alert] = "Hashtag creation faliure!"
      render 'new'
    end
  end
end
