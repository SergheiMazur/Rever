class Game < ApplicationRecord
  belongs_to :platform
  belongs_to :sessions
end
