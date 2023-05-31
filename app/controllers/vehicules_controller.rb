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
    @vehicule = Vehicule.new(params_vehicule)
    @vehicule.user = current_user

    if @vehicule.save
      redirect_to root_path, notice: "Votre vehicule a bien été enregistré"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vehicule.update(params_vehicule)
    # redirect_to root_path ?????
  end

  def destroy
    @vehicule.destroy(params_vehicule)

    redirect_to root_path
  end

  private

  def params_vehicule
    params.require(:vehicule).permit(:name, :description, :price, :category_id, :address, pictures: [])
  end

  def set_vehicule
    @vehicule = Vehicule.find(params[:id])
  end

end
