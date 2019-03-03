class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:create, :new]
  
  def new
    
  end
  
  def create
    #byebug
    
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
    
      session[:user_id] = user.id
      flash.now[:success] = "You are logged in successfully"
      redirect_to root_path
      
    else
      flash.now[:error] = "username or password is incorrect"
      render "new"
      
    end
  end #create 
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have been successfully logged out"
    redirect_to login_path
  end
  
  private
    def logged_in_redirect
      if logged_in?
        flash[:error] = "You are already logged in"
        redirect_to root_path
      end
      
    end
  
end