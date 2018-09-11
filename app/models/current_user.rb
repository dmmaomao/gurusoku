class CurrentUser < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
end

class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :address
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
    end
  end
end
