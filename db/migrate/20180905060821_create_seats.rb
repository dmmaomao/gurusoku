class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :total_now
      t.integer :total_15min
      t.integer :four_seats_now
      t.integer :four_seats_15min
      t.integer :six_seats_now
      t.integer :six_seats_15min
      t.integer :eight_seats_now
      t.integer :eight_seats_15min
      t.integer :teb_seats_now
      t.integer :ten_seats_15min
      t.integer :izakaya_id

      t.timestamps null: false
    end
  end
end
