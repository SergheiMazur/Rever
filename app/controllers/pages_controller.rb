class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout 'landing'
  def home
    @meetups = Meetup.where.not(latitude: nil, longitude: nil)
    @markers = @meetups.map do |meetup|
      {
        lat: meetup.latitude,
        lng: meetup.longitude#,
      }
    end
  end
end
