class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout 'landing'
  def home
    @meetups = Meetup.where.not(lat: nil, lng: nil)

    @markers = @meetups.map do |meetup|
      {
        lat: meetup.lat,
        lng: meetup.lng#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end
end
