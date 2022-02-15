class Category < ApplicationRecord
  belongs_to :user
  has_many :transacs, through: :category_transacs
  has_many :category_transacs, dependent: :delete_all
end
