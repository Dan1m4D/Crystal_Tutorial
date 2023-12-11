class Mage
  # TODO: implement Mage class
  # It must have name, hp, mp, spellbook

  # A mage must be able to:
  # - choose if wants to fight or recover mp
  # - choose a spell
  # - cast a spell
  # - recover MP

  ## Choose action
  # lets user choose between fight or recover mp

  # puts "__________________________________________________________"
  # puts "|                     CHOOSE ACTION:                     |"
  # puts "|                                                        |"
  # puts "|   1- Fight                      2- Recover MP          |"
  # puts "|________________________________________________________|"
  # print "> "
  
  ## Choose Spell
  # TODO: implement spell selection
  # It must display the spellbook and ask the user to choose a spell

  ## Cast Spell
  # TODO: implement spell casting
  # Takes a spell and a target mage
  # It must read the spell type and:
  # - if it is an attack, it must reduce the target's HP by the spell's damage
  # - if it is a heal, it must increase the target's HP by the spell's damage
  # - if it is a recover, it must increase the target's MP by the spell's damage
  # It must also reduce the caster's MP by the spell's MP cost
  # If it is a recover spell, it must reduce the caster's HP by the spell's MP cost
  # It must display the spell's description
  

  # TODO: implement MP recovery
  # For each round of battle, a mage recovers 5% of its MP

  def display_stats
    puts "==========================================="
    puts "| NAME: #{@name}"
    puts "-------------------------------------------"
    puts "| HP: #{@hp}"
    puts "| MP: #{@mp}"
    puts "==========================================="
  end

  def to_s
    return "#{@name} |#{@hp} HP, #{@mp} MP|"
  end
end

class Spellbook

  def initialize
    @spells = [
        Spell.new("Fireball", 10, 10, description: "A fireball is hurled at the target."),
        Spell.new("Thunder", 20, 20, description: "A thunderbolt is hurled at the target."),
        Spell.new("Blizzard", 30, 30, description: "A frigid blizzard is hurled at the target."),
        Spell.new("Meteor", 40, 400, description: "A meteor is hurled at the target."),
        Spell.new("Stampede", 50, 50, description: "A stampede is hurled at the target."),
        Spell.new("Heal", 10, 20, "heal", "A warm light envelops the target."),
        Spell.new("Mega Heal", 20, 50, "heal", "A bright light envelops the target."),
        Spell.new("Recover", 15, 30, "recover", "By the blood may magic surge."),
        Spell.new("Mega Recover", 30, 60, "recover", "By the blood sacrifice may magic surge.")
    ]
  end
end

class Spell
  # must have name, mp_cost, damage, type, description

  def to_s
    s = ""

    case @type
        when "attack"
            s = "#{@name} : #{@type} (#{@mp_cost} MP, #{@damage} damage)\n"
        when "heal"
            s = "#{@name} : #{@type} (#{@mp_cost} MP, #{@damage} HP recover)\n"
        when "recover"
            s = "#{@name} : #{@type} (#{@mp_cost} HP cost, #{@damage} MP recover)\n"
    end


    return s
  end
  
end

def battle(mage1 : Mage, mage2 : Mage)
    # TODO: implement battle logic

    # puts "==================================="
    # puts "| #{mage1.name}'s Turn!"
    # puts "==================================="

    # puts "================== WINNER ================="
    # puts "#{mage2.name} wins!"
    # puts "==========================================="
end

def main
  mage1 = Mage.new("Gandalf")
  mage2 = Mage.new("Patolin")

  battle(mage1, mage2)
end

main
