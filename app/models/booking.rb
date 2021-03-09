class Booking < ApplicationRecord
  belongs_to :segment, dependent: :destroy
  validates :type, presence: true, inclusion: { in: %w[hotel restaurant guide entrance coach],
    message: '%{value} is not a valid booking type' }
end
