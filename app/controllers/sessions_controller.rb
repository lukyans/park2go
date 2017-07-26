class SessionsController < ApplicationController
  def new

  end

  def create
    @parker = Parker.find_by(email: params[:session][:email])
    @driver = Driver.find_by(email: params[:session][:email])
if @driver
    if @driver && @driver.authenticate(params[:session][:password])
      session[:driver_id] = @driver.id
      redirect_to drivers_path
    else
      flash[:alert] = "invalid email or password"
      render :new
    end
  else
    if @parker && @parker.authenticate(params[:session][:password])
      session[:parker_id] = @parker.id
      redirect_to parkers_path
    else
      flash[:alert] = "invalid email or password"
      render :new
    end
  end

  end

  def destroy
    session.clear
    flash[:message] = "Successful logged out."
    redirect_to root_path
  end
end
