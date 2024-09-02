class City < ApplicationRecord
  belongs_to :country
  has_many :places
  belongs_to :itinerary, through: :places
end
