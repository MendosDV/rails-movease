class PagesController < ApplicationController

  def home

    @vehicules = Vehicule.all
    if params[:query].present?
      sql_subquery = <<~SQL
        vehicules.name ILIKE :query
        OR vehicules.description ILIKE :query
        OR categories.name ILIKE :query
      SQL
      @vehicules = @vehicules.joins(:category).where(sql_subquery, query: "%#{params[:query]}%")
    end

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
