class RemoveEightSeatsNowFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :eight_seats_now, :integer
  end
end
