class Group < ApplicationRecord
  belongs_to :trip
  has_many :memberships
  has_many :users, through: :memberships
end
