class MessagesController < ApplicationController
    def index
        @messages = Message.all
        render json: @messages
    end

    def show
        @message = Message.find params[:id]
        render json: @message
    end

    def create
        @message = Message.new message_params

        if @message.save
            render json: @message, status: :created, location: @message
        else
            render json: @message.errors, status: 422
        end
    end

    private

        def message_params
            params.require(:message).permit(:content, :username)
        end
end
