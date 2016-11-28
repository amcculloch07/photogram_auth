class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @comment = Comment.new
    render("users/show.html.erb")
  end

  def likes
    @user = current_user
    @likes = @user.liked_photos
    @comment = Comment.new
  end


end
