class StaticPagesController < ApplicationController

  def home
    @quiz = Quiz.all
    @solved_quiz = {}
    if current_user
      current_user.answers.each do |ans|
        @solved_quiz[ans.quiz_id] = true
      end
    end
  end

end
