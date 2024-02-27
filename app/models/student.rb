class Student < ApplicationRecord
  validates :name, presence: true

  has_many :bookings

end
