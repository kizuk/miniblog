class UsersController < ApplicationController

	def show
	 user = User.find(params[:id])
	 @nickname = user.nickname
	 @tweets = Tweet.where(user_id: params[:user_id]).page(params[:page]).per(5).order('created_at DESC')
    end

end
