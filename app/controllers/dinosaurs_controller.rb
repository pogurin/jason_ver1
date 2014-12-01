class DinosaursController < ApplicationController
  # respond_to :json ,:html
  # This controller just respond to Jason.
  def index
  	@dinosaurs = Dinosaur.all
  	# render :json => @dinosaurs
 	# respond_with @dinosaurs
  end

  def show
  	@dinosaur = Dinosaur.find(params[:id])
  	render :json => @dinosaur
  end
end
 