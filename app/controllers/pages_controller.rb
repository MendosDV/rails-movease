class PagesController < ApplicationController
  def home
    @vehicules = Vehicule.all
  end
end
