class DashboardsController < ApplicationController


def user_profile
  @my_vehicules = current_user.vehicules
  @my_reservations = current_user.reservations
end


end
