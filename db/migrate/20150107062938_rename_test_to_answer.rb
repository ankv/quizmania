class RenameTestToAnswer < ActiveRecord::Migration
  def change
    rename_table :tests, :answers
  end
end
