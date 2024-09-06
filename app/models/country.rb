class Country < ApplicationRecord
  has_many :cities
  has_many :places, through: :cities
  has_one_attached :photo
end
