class RemoveAnswer < ActiveRecord::Migration
  def change
    drop_table :answers
    add_column :questions, :correct_choice_id, :integer
  end
end
