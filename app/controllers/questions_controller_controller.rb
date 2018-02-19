class QuestionsControllerController < ApplicationController
  # ANSWERS = {
  #   1 => { answer: "Great!"},
  #   2 => { answer: "Silly question, get dressed and go to work!"},
  #   3 => { answer:  "I don't care, get dressed and go to work!"}
  # }
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
