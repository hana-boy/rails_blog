class UsersController < ApplicationController
  def index
    users = User.all
    render status: 200, json: { users: users }
  end

  def user_article
    user = User.find(params[:id])
    render status: 200, json: user.articles
  end
end
