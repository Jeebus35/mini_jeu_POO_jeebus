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

#boucle while
end 
if 
  user.life_points > 0
  puts "T'es vraiment le meilleur. Maître Splinter te fait un bisou depuis l'au delà"
else
  puts "Tu entends cette voix ?! Mais... mais oui ! C'est SANGOKU ! Qu'est-ce qu'il dit ?  ARRETE DE GEEKER SUR L'ORDI ET VA METTRE DES HIGH KICKS DANS LA SALLE DU TEMPS SI TU VEUX VAINCRE LA PROCHAINE FOIS !!"
end