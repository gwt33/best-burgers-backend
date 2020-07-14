class Api::V1::BurgersController < ApplicationController
    before_action :set_restaurant

    def index
        @burgers = Burger.all

        render json: @burgers
    end

    def create        
        @burger = @restaurant.burgers.new(burger_params)
        if @burger.save
            render json: @restaurant
        else    
            render json: {error: @burger.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        render json: @burger
    end

    def update
        if @burger.update(burger_params)
            render json: @burger
        else
            render json: @burger.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @burger.destroy
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def burger_params
        params.require(:burger).permit(:restaurant_id, :name, :description, :price)
    end
end
