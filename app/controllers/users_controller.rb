class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  def new
    @title = "Sign up"
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to my Tupichok"
      redirect_to @user
      #redirect_to root_url, :notice => "Signed up!"
    else
      @title = "Sign up"
      render "new"
    end
  end

end
