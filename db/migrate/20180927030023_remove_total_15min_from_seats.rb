class RemoveTotal15minFromSeats < ActiveRecord::Migration
  def change
    remove_column :seats, :total_15min, :integer
  end
end
