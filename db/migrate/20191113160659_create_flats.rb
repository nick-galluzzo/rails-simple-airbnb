class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :description, null: false
      t.integer :price_per_night, null: false
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
