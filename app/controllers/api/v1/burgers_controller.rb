class Api::V1::BurgersController < ApplicationController
    before_action :set_burger, only: [:show, :update, :destroy]

    def index
        @burgers = Burger.all

        render json: @burgers
    end

    def create
        @burger = Burger.new(burger_params)
        if @burger.save
            render json: @burger
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

    def set_burger
        @burger = Burger.find(params[:id])
    end

    def burger_params
        params.require(:burger).permit(:restaurant_id, :name, :description, :price)
    end
end
