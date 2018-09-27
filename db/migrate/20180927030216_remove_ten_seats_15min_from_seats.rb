class RemoveTenSeats15minFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :ten_seats_15min, :integer
  end
end
