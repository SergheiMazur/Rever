class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :meetup
  validates :user_id, uniqueness: { scope: :meetup_id }

  def accept!
    self.current_status = "accepted"
    save
  end

  def reject!
    self.current_status = "rejected"
    save
  end
end
