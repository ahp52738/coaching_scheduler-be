class Note < ApplicationRecord
  belongs_to :booking, null: false, foreign_key: true

  validates :satisfaction, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :content, presence: true
end
