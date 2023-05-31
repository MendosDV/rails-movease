class PagesController < ApplicationController
  
  def home
    @vehicules = Vehicule.all

    @markers = @vehicules.geocoded.map do |vehicule|
      {
        lat: vehicule.latitude,
        lng: vehicule.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {vehicule: vehicule}),
        marker_html: render_to_string(partial: "marker")
      } unless vehicule.latitude.nil?
    end
  end
end
