class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :destiny
      t.date :date
      t.integer :seats
      t.integer :price
      t.time :time

      t.timestamps
    end
  end
end
