class TweetsController < ApplicationController

  def index
  	@tweets = Tweet.order('created_at DESC').page(params[:page]).per(5)
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
