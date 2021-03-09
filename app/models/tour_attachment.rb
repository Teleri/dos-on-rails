class TourAttachment < ApplicationRecord
  belongs_to :tour
  validates :type, :file, presence: true
end
