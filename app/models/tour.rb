class Tour < ApplicationRecord
  belongs_to :user
  has_many :segments
  has_one :destination_office
  has_one :sales_office
  
end
