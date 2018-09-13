class CirclesController < ApplicationController
    def index
        @circles = Circle.all
        render json: @circles
    end

    def show
        @circle = Circle.find params[:id]
        render json: @circle
    end

    def create
        @circle = Circle.new circle_params

        if @circle.save
            render json: @circle, status: :created, location: @circle
        else
            render json: @circle.errors, status: 422
        end
    end

    private

        def circle_params
            params.require(:circle).permit(:x,:y,:strokeWidth,:strokeColor, :username)
        end
end
