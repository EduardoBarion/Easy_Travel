class Group < ApplicationRecord
  belongs_to :trip
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
end
