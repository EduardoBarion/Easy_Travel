class Itinerary < ApplicationRecord
  belongs_to :place
  belongs_to :user
  has_many :cities, through: :places
  has_many :countries, through: :cities
end
