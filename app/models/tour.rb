class Tour < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :segments
  has_one :destination_office
  has_one :sales_office
  validates :reference_number, :tour_name, :departure_date, :termination_date, presence: true
  validates :status, inclusion: { in: %w(INQ GOH MAT CXL) }, presence: true
end
