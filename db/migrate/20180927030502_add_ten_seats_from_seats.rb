class AddTenSeatsFromSeats < ActiveRecord::Migration
  def change
    add_column :seats, :ten_seats, :integer
  end
end
