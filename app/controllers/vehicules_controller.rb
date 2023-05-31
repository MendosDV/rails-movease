class VehiculesController < ApplicationController
  before_action :set_vehicule, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

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
    redirect_to dashboard_path, notice: "Votre vehicule a bien été modifié"
  end

  def destroy
    if @vehicule.destroy
      redirect_to dashboard_path, notice: "Votre vehicule a bien été supprimé"
    else
      render "user_profile", notice: "Votre vehicule n'a pas pu être supprimé"
    end
  end

  private

  def params_vehicule
    params.require(:vehicule).permit(:name, :description, :price, :category_id, :address, pictures: [])
  end

  def set_vehicule
    @vehicule = Vehicule.find(params[:id])
  end

end
