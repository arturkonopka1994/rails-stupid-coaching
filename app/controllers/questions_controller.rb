class QuestionsController < ApplicationController
  def ask
  end
  def answer
    answers = ["I don't care, get dressed and go back to work!", "Silly question, get dressed and go to work!", "Great!", "I cannot hear you! Get dressed and go back to work"]
    @question = params[:question]

    if @question.blank?
      @answer = answers[3]
    elsif @question =~ /i am going to work/i
      @answer = answers[2]
    elsif @question.ends_with?("?")
      @answer = answers[1]
    else
      @answer = answers[0]
    end
  end
end
