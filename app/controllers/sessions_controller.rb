class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    if params[:name] == nil || params[:name] == ''
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    # byebug
    session.delete(:name)
    redirect_to root_path
  end

end
