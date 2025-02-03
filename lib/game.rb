require_relative 'display'

class Game
  def initialize
    @number_to_guess = rand(1..100)
    @attempts = 0
    @display = Display.new
  end

  def start
    @display.welcome_message
    loop do
      guess = @display.ask_for_guess
      @attempts += 1
      break if check_guess(guess)
    end
    @display.end_message(@attempts)
  end

  private

  def check_guess(guess)
    if guess == @number_to_guess
      @display.correct_guess_message
      true
    elsif guess < @number_to_guess
      @display.higher_message
      false
    else
      @display.lower_message
      false
    end
  end
end
