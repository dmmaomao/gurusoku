class AddFourSeatsFromSeats < ActiveRecord::Migration
  def change
    add_column :seats, :four_seats, :integer
  end
end
