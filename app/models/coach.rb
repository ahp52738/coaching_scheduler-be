class Coach < ApplicationRecord
  validates :name, presence: true

  has_many :slots
end
