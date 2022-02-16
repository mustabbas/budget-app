class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :category
  has_many :trans
  validates :fullname, presence: true
end
