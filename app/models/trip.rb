require 'securerandom'

class Trip < ApplicationRecord
  belongs_to :user
  has_many :plans, dependent: :destroy
  has_many :places, through: :plans
  has_many :groups, dependent: :destroy

  before_create :generate_invite_token
  after_create :create_initial_group

  validates :name, presence: true

  private

  def generate_invite_token
    self.invite_token = SecureRandom.hex(10)
  end

  def create_initial_group
    group = Group.create!(trip: self)
    Membership.create!(group: group, user: user)
  end
end
