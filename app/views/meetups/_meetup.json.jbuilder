json.extract! meetup, :id, :title, :location, :lat, :lng, :start_time, :end_time, :game_id, :user_id, :created_at, :updated_at
json.url meetup_url(meetup, format: :json)
