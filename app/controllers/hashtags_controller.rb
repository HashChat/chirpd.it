class HashtagsController < ApplicationController
  
  def index
    @hashtags = Hashtag.all
  end

  def create
    @hashtag = Hashtag.create!(params[:hashtag])
  end
  
end
