class AddAvailableColumnToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :available, :boolean, default: true
  end
end
