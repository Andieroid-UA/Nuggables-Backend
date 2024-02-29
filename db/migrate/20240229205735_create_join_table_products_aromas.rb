class CreateJoinTableProductsAromas < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :aromas do |t|
      # t.index [:product_id, :aroma_id]
      # t.index [:aroma_id, :product_id]
    end
  end
end
