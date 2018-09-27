class RemoveFourSeatsNowFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :four_seats_now, :integer
  end
end
