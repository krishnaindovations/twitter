class UsersController < ApplicationController
  before_action :get_user
  before_action :get_following_user, only: [:follow, :unfollow]
  before_action :check_following_list, only: [:follow ]

  def tweets
    @tweets = @user.feed
  end

  def show
  end

  def follow
    @user.follow!(@following)
    render json: { message: "you are following now !" }
  end

  def unfollow
    @user.unfollow!(@following)
    render json: { message: "successfully unfollwed !" }
  end

  private

    def get_user
      @user ||= User.find_by(id: params[:id])
    end

    def get_following_user
      @following ||= User.find_by(id: params[:following_id])
    end

    def check_following_list
      if @user.following?(@following)
        render json: { message: "Already following that user !" } and return
      end
    end
end
