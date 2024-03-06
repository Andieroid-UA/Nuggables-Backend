class Product < ApplicationRecord
  # associations
  has_many :product_aromas
  has_many :product_effects
  has_many :product_benefits
  has_many :aromas, through: :product_aromas
  has_many :effects, through: :product_effects
  has_many :benefits, through: :product_benefits

  # types and forms the product comes in
  belongs_to :type
  belongs_to :form
end
