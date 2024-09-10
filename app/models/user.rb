class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips
  has_many :memberships
  has_many :groups, through: :memberships
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :genre, presence: true
  # validates :phone_number, presence: true, uniqueness: true
  # validates :address, presence: true
  # validates :cpf, presence: true, uniqueness: true
  # validates :date_of_birth, presence: true
end
