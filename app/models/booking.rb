class Booking < ApplicationRecord
  belongs_to :student
  belongs_to :slot
  has_one :note

  after_save :update_end_time

  def update_end_time
    if self.slot.start_time.present?
      self.slot.update(end_time: self.slot.start_time + 2.hours)
    end
  end

end
