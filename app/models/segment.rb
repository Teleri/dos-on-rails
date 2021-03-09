class Segment < ApplicationRecord
  belongs_to :tour, dependent: :destroy
  has_many :bookings
  has_one :destination_office
  validates :segment_date, presence: true
end
