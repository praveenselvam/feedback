class CreateAppreciations < ActiveRecord::Migration
  def change
    create_table :appreciations do |t|
      t.integer :user_id
      t.string :description
      t.string :name
      t.integer :karma

      t.timestamps
    end
  end
end
