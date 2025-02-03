require 'colorize'

class Display
  def welcome_message
    puts "Bienvenue dans le jeu de devinettes !".colorize(:blue)
    puts "Je pense à un nombre entre 1 et 100.".colorize(:blue)
    puts "Pouvez-vous le deviner ?".colorize(:blue)
  end

  def ask_for_guess
    print "Entrez votre proposition : ".colorize(:green)
    gets.chomp.to_i
  end

  def correct_guess_message
    puts "Félicitations ! Vous avez trouvé le nombre !".colorize(:yellow)
  end

  def higher_message
    puts "Le nombre est plus grand. Essayez encore !".colorize(:red)
  end

  def lower_message
    puts "Le nombre est plus petit. Essayez encore !".colorize(:red)
  end

  def end_message(attempts)
    puts "Vous avez trouvé en #{attempts} tentatives.".colorize(:cyan)
  end
end
