class DestinationOffice < ApplicationRecord
  has_many :segments
  validates :name, :country, :city_name, :city_code, presence: true
end
