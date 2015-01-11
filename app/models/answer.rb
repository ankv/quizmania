class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :quiz
  
  def quiz_name
    Quiz.find_by(id: quiz_id).name
  end
end
