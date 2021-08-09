class PagesController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer
  end

  private

  def coach_answer
    if @question.to_s == 'I am going to work right now!'
      ''
    elsif @question.to_s.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
