class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
