require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts   "          "         "----------------------------------------------------"
puts     "          "             "---------------------------------------"
puts  "          "                      "------------------------------"
puts      "          "                "|Bienvenue à toi jeune combattant|"
puts     "           "                   "Puisse le sort t'être favorable"
puts      "          "                  "------------------------------"
puts      "          "            "---------------------------------------"
puts    "          "        "----------------------------------------------------"


#Création du personnage
puts "Quel est ton nom de guerrier ?"
print '> '
guerrier = gets.chomp
user = HumanPlayer.new(guerrier)
player1 = Player.new("Idy la dompteuse de putois")
player2 = Player.new("Hugh le bouffeur de larves")

#Création des ennemis
def enemies_array
  enemies_array =[]
  player1 = Player.new("Idy la dompteuse de putois")
  player2 = Player.new("Hugh le bouffeur de larves")
  enemies_array << player1
  enemies_array << player2
  return enemies_array
end



# BATTLE !!
while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  puts user.show_state
  puts "Quelle action veux-tu effectuer ?"
  puts 
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts 
  puts "attaquer un joueur en vue :"
  puts
  print "0 -" 
  puts player1.show_state
  print "1 -" 
  puts player2.show_state
  puts 
  print '>  '
  choix = gets.chomp
  if
    choix == "a"
    puts user.search_weapon
  elsif 
    choix == "s"
    puts user.search_health_pack
  elsif 
    choix == "0"
    puts user.attacks(player1)
  else 
    choix == "1"
    puts user.attacks(player2) 
  end
  puts "Les autres joueurs attaquent !"
  enemies_array.each do |player|
    if 
      player.life_points > 0
    then  
      player.attacks(user)
    else puts player.show_state
    end 
    end
  puts  
end 

if 
  user.life_points > 0
  puts "T'es vraiment le meilleur. Maître Splinter te fait un bisou depuis l'au delà"
else
  puts "Tu entends cette voix ?! Mais... mais oui ! C'est SANGOKU ! Qu'est-ce qu'il dit ?  ARRETE DE GEEKER SUR L'ORDI ET VA METTRE DES HIGH KICKS DANS LA SALLE DU TEMPS SI TU VEUX VAINCRE LA PROCHAINE FOIS !!"
end