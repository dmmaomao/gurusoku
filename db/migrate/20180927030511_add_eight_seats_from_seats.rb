class AddEightSeatsFromSeats < ActiveRecord::Migration
  def change
    add_column :seats, :eight_seats, :integer
  end
end
