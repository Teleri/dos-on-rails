class Segment < ApplicationRecord
  belongs_to :tour
  has_many :bookings
  has_one :destination_office
  validates :city_name, :segment_date, presence: true
end
