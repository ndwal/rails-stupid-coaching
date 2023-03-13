class QuestionsController < ApplicationController
  def ask
    @answer = params[:question]
  end

  def answer
    @answer = params[:question]

    if @answer == "I am going to work"
      @bot = "Great!"
    elsif @answer[-1] == "?"
      @bot = "Silly question, get dressed and go to work!"
    else
      @bot = "I don't care, get dressed and go to work!"
    end
  end
end
