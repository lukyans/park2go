module Api
  module V1
    class ParkersController < ApplicationController
      def index
        render json: Parker.all
      end

      def show
        render json: Parker.find(params[:id])
      end

      def update
        @parker = Parker.find(params[:id])
        @parker.update(parker_params)
        render json: Parker.find(params[:id])
      end

      def parker_params
        params.require(:location).permit(:lat, :lng)
      end
    end
  end
end
