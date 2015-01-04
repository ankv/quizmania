class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :quiz_name
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
