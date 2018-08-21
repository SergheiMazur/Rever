class Meetup < ApplicationRecord
  belongs_to :game
  belongs_to :user
  include PgSearch

  pg_search_scope :search_by_meetup_title_and_game_name,
    against: [ :title ],
    associated_against: {
      game: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
