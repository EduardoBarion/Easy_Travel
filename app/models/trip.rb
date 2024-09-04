class Trip < ApplicationRecord
  belongs_to :user
  has_many :plans, dependent: :destroy
  has_many :places, through: :plans
end
