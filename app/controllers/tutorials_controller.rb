class TutorialsController < ApplicationController
 #render json 

  def index
    @tutorials = Tutorial.all
    render json: @tutorials
  end

  def show 
    @tutorial = Tutorial.find params[:id]
    render json: @tutorial
  end

end
