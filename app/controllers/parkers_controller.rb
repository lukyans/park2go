class ParkersController < ApplicationController

  def index
    @parker = current_parker
    @drivers = current_driver#Driver.all
  end

  def new
    @parker = Parker.new
  end

  def create
    @parker = Parker.new(parker_params)
    if @parker.save
      session[:parker_id] = @parker.id
      flash[:success] = "Welcome #{@parker.email}"
      redirect_to parkers_path
    else
      flash[:message] = "Try again"
      render :new
    end
  end

  def show
    @parker = current_parker
  end

  def parker_params
    params.require(:parker).permit(:first_name, :last_name, :phone, :email, :password, :location)
  end

end
