class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ""
    if params['question']
      case
      when params['question'] === 'I am going to work'
        then @answer = 'Great!'
      when params['question'].include?('?')
        then @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
