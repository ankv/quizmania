class RenameQuizName < ActiveRecord::Migration
  def change
    rename_column :answers, :quiz_name, :quiz_id
  end
end
