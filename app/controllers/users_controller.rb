class UsersController < ApplicationController

  def index
    @users = Users::Index.new({q: params[:q]}).call
  end

  def show
    @user = Users::Show.new({id: params[:id]}).call
  end
end
