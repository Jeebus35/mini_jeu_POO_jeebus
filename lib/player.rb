require 'pry'

class Player
  attr_accessor :name, :life_points
  

  def initialize(name_to_save)
    @name = name_to_save
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie ... Chaud"
  end

  def gets_damage(damage_suffered)
    damage_suffered = damage_suffered.to_i
    @life_points = @life_points - damage_suffered
    puts
    if @life_points <= 0
      return "#{@name} est DEAD !! Me dis pas qu't'es triste ?! Cette ordure voulait un cercueil en Acajou du Mexique..."
    end
  end

  def attacks(player_X)
    puts "#{@name} attaque #{player_X.name} à la japonaise ! Tenuki.......... Invocation du rat !"
    damage = compute_damage
    puts
    puts "-----> Il lui inflige #{damage} points de dommages dans la caboche ... c'est du sale. Mais en même temps il a invoqué le rat."
    return player_X.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name_to_save)
    @name = name_to_save
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}... Trop Chaud"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    new_weapon_level = rand(1..6)
    puts
    puts "Mon petit père, tu viens de trouver une arme de niveau #{new_weapon_level}"
    if new_weapon_level > @weapon_level
      @weapon_level = new_weapon_level
      puts "Alleeeeez là ! Elle est bien plus cool que ton arme actuelle. Prends la ! Mais range la vite tu vas finir par blesser quelqu'un"
    else
      puts "Bachibouzouk !! Mille milliards de mille sabords ! Ca vaut rien ce truc. Autant acheter un Opinel si tu veux mon avis. Quoi t'es pas content ?! C'est ma faute si t'es équipé comme un scout ?" 
    end
  end 

  def search_health_pack
    health_pack_level = rand(1..6)
    if health_pack_level == 1
      puts
      puts "Nan. Rien par ici sorry"
    elsif health_pack_level >= 2 && health_pack_level <= 5
      if  
        @life_points <= 50 &&  @life_points > 0
        @life_points = @life_points + 50
      else
        @life_points = 100
      end 
      puts
      puts "Un pot de Nutella ?! Mais qu'est-ce que ça fout la ? Pas super écolo mais tu gagnes 50 points de vie ! "
    elsif health_pack_level == 6
      if 
        @life_points <= 20 && @life_points > 0
        @life_points = @life_points + 80
      else
        @life_points = 100
      end 
      puts
      puts "Oh ! Un restau vegan et bio ?! C'est super healthy, tu gagnes 80 points de vie petit veinard ! Je te recommande le velouté de courge bleue de Hongrie. Une tuerie. Et puis relax, laisse ton arme à l'entrée tsé... les gens sont cools ici. Enfin garde quand même un oeil sur le type en chemise orange."
    end 
  end    

end


#puts "end of file"