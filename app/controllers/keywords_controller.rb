class KeywordsController < ApplicationController 
    def index 
        @keywords = Keyword.all 
        render json: @keywords 
    end 

    def show 
        @keyword = Keyword.find params[:id]
        render json: @keyword
    end 
end 