class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :name
      t.references :car, index: true

      t.timestamps null: false
    end
    add_foreign_key :versions, :cars
  end
end
