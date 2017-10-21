class CreateReferenceTables < ActiveRecord::Migration[5.1]
  def change
    create_table :reference_tables do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
