class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.references :manufacturer, index: true

      t.timestamps null: false
    end
    add_foreign_key :cars, :manufacturers
  end
end
