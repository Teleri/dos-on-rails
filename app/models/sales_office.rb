class SalesOffice < ApplicationRecord
  validates :name, :country, :city_name, :city_code, presence: true
end
