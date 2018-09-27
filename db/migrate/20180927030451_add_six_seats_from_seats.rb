class AddSixSeatsFromSeats < ActiveRecord::Migration
  def change
    add_column :seats, :six_seats, :integer
  end
end
