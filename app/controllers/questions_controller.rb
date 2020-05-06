class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer == "I am going to work"
      @answer_coach = "Great!"
    elsif @answer.end_with?("?")
      @answer_coach = "Silly question, get dressed and go to work!"
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
