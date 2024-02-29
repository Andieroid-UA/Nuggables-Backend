class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
