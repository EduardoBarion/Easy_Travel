class Place < ApplicationRecord
  belongs_to :city
  has_many :itineraries
  belongs_to :country, through: :cities
end
