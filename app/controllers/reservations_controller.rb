class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy, :accept, :decline]

  def index
    @reservations = Reservation.all
  end

  def accept
    @reservation.accept!
    redirect_to dashboard_path, notice: "Votre réservation a bien été acceptée"
  end

  def decline
    @reservation.decline!
    redirect_to dashboard_path, notice: "Votre réservation a bien été refusée"
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
    @reservation.vehicule = @vehicule
    if @reservation.save
      redirect_to dashboard_path, notice: "Votre vehicule a bien été enregistré"
    else
      render :new
    end
  end




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
