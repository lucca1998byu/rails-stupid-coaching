class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:questions]
    @answer = coach(@question)
  end

  def coach(question)
    return 'Great' if question == 'I am going to work'

    return 'Silly question, get dressed and go to work!' if question.include?('?')

    "I don't care, get dressed and go to work!"
  end
end
