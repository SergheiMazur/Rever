class Meetup < ApplicationRecord
  belongs_to :game
  belongs_to :user

  has_many :guests
  has_many :users, through: :guests

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  include PgSearch

  pg_search_scope :search_by_meetup_title_and_game_name,
    against: [ :title ],
    associated_against: {
      game: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

    def booked_by?(user)
      self.guests.any? do |guest|
        guest.user  == user
      end
    end
end
