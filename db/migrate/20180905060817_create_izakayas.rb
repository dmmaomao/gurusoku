class CreateIzakayas < ActiveRecord::Migration
  def change
    create_table :izakayas do |t|

      t.timestamps null: false
    end
  end
end
