class RenameQuizNameToQuizId < ActiveRecord::Migration
  def change
    remove_column :answers, :quiz_name
    add_column :answers, :quiz_name, :integer
  end
end
