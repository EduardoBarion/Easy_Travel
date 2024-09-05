class Place < ApplicationRecord
  belongs_to :city
  has_many :plans
  geocoded_by :address
  after_validation :geocode
end
