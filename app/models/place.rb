class Place < ApplicationRecord
  belongs_to :city
  has_many :plans
  geocoded_by :address
  after_validation :geocode
  # Trocar para has_many quando colocar mais de uma foto
  has_one_attached :photo
end
