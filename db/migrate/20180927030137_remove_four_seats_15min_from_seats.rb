class RemoveFourSeats15minFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :four_seats_15min, :integer
  end
end
