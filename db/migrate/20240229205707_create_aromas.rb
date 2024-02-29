class CreateAromas < ActiveRecord::Migration[7.1]
  def change
    create_table :aromas do |t|
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
