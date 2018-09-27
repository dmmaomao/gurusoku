class RemoveTotalNowFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :total_now, :integer
  end
end
