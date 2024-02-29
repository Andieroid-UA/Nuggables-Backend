class CreateJoinTableProductsEffects < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :effects do |t|
      # t.index [:product_id, :effect_id]
      # t.index [:effect_id, :product_id]
    end
  end
end
