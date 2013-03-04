class CreateKarmaItems < ActiveRecord::Migration
  def change
    create_table :karma_items do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
