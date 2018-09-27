class RemoveTebSeatsNowFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :teb_seats_now, :integer
  end
end
