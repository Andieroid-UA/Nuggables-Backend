class CreateJoinTableProductsBenefits < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :benefits do |t|
      # t.index [:product_id, :benefit_id]
      # t.index [:benefit_id, :product_id]
    end
  end
end
