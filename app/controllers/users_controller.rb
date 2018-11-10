class UsersController < ApplicationController

	def show
	 user = User.find(params[:id])
	 @nickname = user.nickname
	 @tweets = Tweet.where(params[:user_id]).order('created_at DESC').page(params[:page]).per(5)
    end

end
