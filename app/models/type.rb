class Type < ApplicationRecord

  has_many :products, foreign_key: "form_id"

end
