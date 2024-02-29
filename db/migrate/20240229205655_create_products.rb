class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :text
      t.string :thc
      t.string :float
      t.string :cbd
      t.string :float
      t.string :type
      t.string :references
      t.string :form
      t.string :references

      t.timestamps
    end
  end
end
