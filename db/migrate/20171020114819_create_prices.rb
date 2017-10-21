class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.float :value
      t.references :version, index: true
      t.references :reference_table, index: true

      t.timestamps null: false
    end
    add_foreign_key :prices, :versions
    add_foreign_key :prices, :reference_tables
  end
end
