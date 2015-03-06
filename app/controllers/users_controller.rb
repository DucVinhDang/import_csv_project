class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def import
  	User.import(params[:file])
  	redirect_to root_url, notice: "User profiles imported."
  end

  def destroy
  	User.destroy_all
  	redirect_to root_url
  end
end
