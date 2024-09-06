class City < ApplicationRecord
  belongs_to :country
  has_many :places
  has_one_attached :photo
end
