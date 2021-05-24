class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:user_question]
    if params[:user_question] == "I am going to work"
      @answer = "Great"
    elsif params[:user_question].include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
