class Slot < ApplicationRecord
  belongs_to :coach
  has_one :booking, dependent: :destroy

  validates :start_time, presence: true

end
