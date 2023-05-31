class DashboardsController < ApplicationController

def user_profile
  @my_vehicules = current_user.vehicules
end


end
