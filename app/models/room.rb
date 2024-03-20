class Room < ApplicationRecord
	belongs_to :hotel
   has_many :bookings, dependent: :destroy

  validates :number, presence: true
  validates :number, uniqueness: { scope: :hotel_id, message: "Room number must be unique within a hotel" }
end
