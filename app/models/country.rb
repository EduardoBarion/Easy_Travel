class Country < ApplicationRecord
  has_many :cities
  has_many :places, through: :cities
  belongs_to :itinerary, through: :places
end
