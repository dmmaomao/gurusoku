class RemoveSixSeats15minFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :six_seats_15min, :integer
  end
end
