class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @vehicule = Vehicule.find(params[:vehicule_id])
    @reservation = Reservation.new

  end

  def show
    @vehicule = Vehicule.find(params[:vehicule_id])

  end

  def create
    @vehicule = Vehicule.find(params[:vehicule_id])
    @reservation = Reservation.new(params_reservation)
    @reservation.user = current_user
    @reservation.vehicule = Vehicule.find(params[:vehicule_id])
    if @reservation.save

      redirect_to vehicule_reservation_path(id: @reservation.id), notice: "Votre vehicule a bien été enregistré"
    else
      render :new
    end

  end

  # def edit

  # end

  # def update

  # end

  def destroy
    @vehicule.destroy(params_reservation)

    redirect_to root_path
  end

  private

  def params_reservation
    params.require(:reservation).permit(:date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
