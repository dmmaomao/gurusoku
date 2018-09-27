class RemoveEightSeats15minFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :eight_seats_15min, :integer
  end
end
