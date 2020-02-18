class StaticPagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @tweets = current_user.tweets
    @followers = current_user.followers
    @followings = current_user.following
  end
end
