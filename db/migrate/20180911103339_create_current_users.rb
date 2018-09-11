class CreateCurrentUsers < ActiveRecord::Migration
  def change
    create_table :current_users do |t|
      t.string :title
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
