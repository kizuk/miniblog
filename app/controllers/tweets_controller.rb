class TweetsController < ApplicationController

  def index
  	@tweets = Tweet.all.order('created_at DESC')
  end

  def new
  end

  def create
  	Tweet.create(text: params[:text])
  	redirect_to action: :index
  end

  private
  def tweet_params
  	params.permit(:text)
  end

end
