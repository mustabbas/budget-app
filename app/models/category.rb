class Category < ApplicationRecord
  belongs_to :user
  has_many :category_transacs, dependent: :delete_all
  has_many :transacs, through: :category_transacs

  def amount
    result = 0
    transacs.each { |transac| result += transac.amount }
    result
  end
  
end
