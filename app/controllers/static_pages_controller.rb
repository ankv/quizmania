class StaticPagesController < ApplicationController

  def home
    @quiz = Quiz.all
  end

end
