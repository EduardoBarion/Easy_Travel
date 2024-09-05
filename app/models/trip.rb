class Trip < ApplicationRecord
  belongs_to :user
  has_many :plans, dependent: :destroy
  has_many :places, through: :plans
  has_many :groups, dependent: :destroy

  after_create :create_initial_group

  private

  def create_initial_group
    groups.create!
  end
end
