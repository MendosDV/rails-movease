class VehiculesController < ApplicationController
  before_action :set_vehicule, only: [:show, :edit, :update, :destroy]

  def index
    @vehicules = Vehicule.all
  end

  def show
  end

  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(parmas_vehicule)
    @vehicule.save
    # redirect_to vehicules_path ?????
  end

  def edit
  end

  def update
    @vehicule.update(parmas_vehicule)
    # redirect_to vehicules_path ?????
  end

  def destroy
    @vehicule.destroy(parmas_vehicule)
    # redirect_to vehicules_path ?????
  end

  private

  def parmas_vehicule
    params.require(:vehicule).permit(:name, :description, :price)
  end

  def set_vehicule
    @vehicule = Vehicule.find(params[:id])
  end

end
