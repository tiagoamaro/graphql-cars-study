class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.float :value
      t.references :car, index: true

      t.timestamps null: false
    end
    add_foreign_key :prices, :car
  end
end
