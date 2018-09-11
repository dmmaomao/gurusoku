class CreateIzakayas < ActiveRecord::Migration
  def change
    create_table :izakayas do |t|
      t.string :name
      t.string :genre
      t.string :address
      t.integer :izakaya_id
      t.timestamps null: false
    end
  end
end
