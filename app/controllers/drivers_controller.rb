class DriversController < ApplicationController

  def index
    @driver = current_driver
    @parker = current_parker
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)
    if @driver.save
      session[:driver_id] = @driver.id
      flash[:success] = "Welcome #{@driver.email}"
      redirect_to drivers_path
    else
      flash[:message] = "Try again"
      render :new
    end
  end

  def show
    @driver = current_driver
  end

  def driver_params
    params.require(:driver).permit(:first_name, :last_name, :phone, :email, :password)
  end

end
