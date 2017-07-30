module Api
  module V1
    class DriversController < ApplicationController
      def index  
        render json: Driver.all
      end

      def show
        render json: Driver.find(params[:id])
      end

      def update
        @driver = Driver.find(params[:id])
        @driver.update(driver_params)
        render json: Driver.find(params[:id])
      end

      def driver_params
        params.require(:location).permit(:lat, :lng)
      end
    end
  end
end
