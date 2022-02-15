class Transac < ApplicationRecord
  belongs_to :user
  has_many :category_transacs, dependent: :delete_all
  has_many :categories, through: :category_transacs
  validates :name, presence: true
  validates :amount, presence: true
end
