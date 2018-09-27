class RemoveSixSeatsNowFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :six_seats_now, :integer
  end
end
