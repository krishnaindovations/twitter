class StaticPagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @feed_items = current_user.feed.includes(:user)
    @tweets = current_user.tweets
    @followers = current_user.followers
    @followings = current_user.following
  end
end
