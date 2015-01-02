class QuizzesController < ApplicationController
  def create
  end

  def new
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
  end
end
