class CreateUserBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_bookings do |t|
      t.references :booking, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      
      t.timestamps
    end
  end
end
