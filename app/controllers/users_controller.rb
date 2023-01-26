class UsersController < ApplicationController
  def index
    @users = User.where("email LIKE ?", "%" + params[:q] + "%")
    #puts @users.email
  end

  def search
    @users = User.where("name LIKE ?", "%" + params[:q] + "%")
    #puts @users.email
  end



end
