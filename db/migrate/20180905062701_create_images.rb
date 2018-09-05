class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :image_url
      t.integer :izakaya_id
      t.timestamps null: false
    end
  end
end
