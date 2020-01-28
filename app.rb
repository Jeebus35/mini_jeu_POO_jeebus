require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



# Création des Players
player1 = Player.new("Tomy la Fouine")
player2 = Player.new("Walker oeil de Faucon")
player3 = HumanPlayer.new("Amy Mc. Shadow")



# BATTLE !! (les puts servent à rendre la présentation plus jolie)
puts " > Voici l'état de nos deux ninjas : "
puts " "
while player1.life_points >= 0 && player2.life_points >= 0
  puts player1.show_state
  puts player2.show_state
  puts
  puts "Ils font la moue... ça sent la bagarre, non ?!"
  puts
  puts 
  puts
  puts
  puts "#{player1.name} entame les hostilités"
  puts 
  puts player1.attacks(player2)
  if player2.life_points <= 0
    break
  end
  puts 
  puts
  puts "Qui sème le vent récolte la tempête... #{player2.name} riposte !"
  puts
  puts player2.attacks(player1)
  puts 
  puts
  puts
  puts
  puts 
  puts 
  puts
  puts 
  puts
end

#binding.pry
