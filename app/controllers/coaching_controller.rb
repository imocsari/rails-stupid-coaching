class CoachingController < ApplicationController


  # def index
  # @category = params[:ask]
  # @coachings = COACHING.select {|c| c[:category] == @category }
  # end
  def ask

  end

  def answer
    @your_message = params[:question]
    @answer= coach(@your_message)

  end

private
  def coach(your_message)
    if @your_message.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
