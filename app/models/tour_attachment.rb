class TourAttachment < ApplicationRecord
  belongs_to :tour, dependent: :destroy
  validates :type, :file, presence: true
end
