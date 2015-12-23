class SessionsController < ApplicationController
  def new

  end

  def create
    data = params[:session_data]
    @person = Person.find_by_username(data[:username])
    if !@person.nil? && @person.authenticate(data[:password])
      session[:person_id] = @person.id
      flash[:success] = "You are now logged in."
      redirect_to root_path
    else
      flash.now[:error] = "Invalid username and password combination."
      render :new
    end
  end

  def destroy
    @current_person = nil
    session[:person_id] = nil
    flash[:success] = "You are now logged out."
    redirect_to root_path
  end
end
