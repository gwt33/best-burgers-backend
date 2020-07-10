class Api::V1::RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all

        render json: @restaurants, include: :burgers
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :location)
    end

end
