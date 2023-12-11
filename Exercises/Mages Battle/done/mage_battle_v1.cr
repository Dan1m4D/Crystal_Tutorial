class Mage
  @MAX_MP = 100
  property name : String
  property hp : Int32
  property mp : Int32
  property spellbook : Spellbook

  def initialize(name : String)
    @name = name
    @hp = 200
    @mp = @MAX_MP
    @spellbook = Spellbook.new
  end

  def choose_action: Symbol
    puts "__________________________________________________________"
    puts "|               CHOOSE ACTION: #{@name}                   |"
    puts "|                                                        |"
    puts "|   1- Fight                      2- Recover MP          |"
    puts "|________________________________________________________|"
    print "> "

    choise = gets.try(&.to_i32) || 0

    if choise == 1
      return :cast_spell
    elsif choise == 2
      return :recover_mp
    else
      raise "Invalid choise"
    end
  end

  def choose_spell
    puts "============== Choose a spell===============\n"
    @spellbook.spells.each_with_index do |spell, index|
      puts "| #{index + 1}. #{spell.to_s}"
    end
    puts "============================================\n"
    print "> "

    spell_index = gets.try(&.to_i) || 0
    spell_index -= 1
    return @spellbook.spells[spell_index]
  end

  def cast_spell(spell : Spell, target : Mage)
    if @mp >= spell.mp_cost
      @mp -= spell.mp_cost
        case spell.type
            when "attack"
                puts "#{@name} casts #{spell.name}!"
                puts spell.description
                target.receive_damage(spell.damage)
            when "heal"
                puts "#{@name} casts #{spell.name}!"
                puts spell.description
                @hp -= spell.damage
            when "recover"
                puts "#{@name} casts #{spell.name}!"
                puts spell.description
                @mp += spell.damage
                @hp -= spell.mp_cost
        end
    else
      puts "Not enough MP!"
    end
  end

  def receive_damage(damage : Int32)
    @hp -= damage
    puts "#{@name} takes #{damage} damage!"
  end

  def recover_mp
    recover_mp = 0.05 * @MAX_MP
    @mp += recover_mp.to_i32
    puts "#{@name} recovers #{recover_mp.to_i32} MP!"
    
  end

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
  property spells : Array(Spell)

  def initialize
    @spells = [
        Spell.new("Fireball", 10, 10, description: "A fireball is hurled at the target."),
        Spell.new("Thunder", 20, 20, description: "A thunderbolt is hurled at the target."),
        Spell.new("Blizzard", 30, 30, description: "A frigid blizzard is hurled at the target."),
        Spell.new("Meteor", 40, 400, description: "A meteor is hurled at the target."),
        Spell.new("Stampede", 50, 50, description: "A stampede is hurled at the target."),
        Spell.new("Heal", 10, -20, "heal", "A warm light envelops the target."),
        Spell.new("Mega Heal", 20, -50, "heal", "A bright light envelops the target."),
        Spell.new("Recover", 15, 30, "recover", "By the blood may magic surge."),
        Spell.new("Mega Recover", 30, 60, "recover", "By the blood sacrifice may magic surge.")
    ]
  end
end

class Spell
    property name : String
    property mp_cost : Int32
    property damage : Int32
    property type : String
    property description : String

  def initialize(name : String, mp_cost : Int32, damage : Int32, type : String = "attack", description : String = "")
    @name = name
    @mp_cost = mp_cost
    @damage = damage
    @type = type
    @description = description
  end

  def to_s
    s = ""

    case @type
        when "attack"
            s = "#{@name} : #{@type} (#{@mp_cost} MP, #{@damage} damage)\n"
        when "heal"
            s = "#{@name} : #{@type} (#{@mp_cost} MP, #{-@damage} HP recover)\n"
        when "recover"
            s = "#{@name} : #{@type} (#{@mp_cost} HP cost, #{@damage} MP recover)\n"
    end


    return s
  end
  
end

def battle(mage1 : Mage, mage2 : Mage)
  puts "#{mage1.name} vs #{mage2.name}!"

  while mage1.hp > 0 && mage2.hp > 0

    puts "==================================="
    puts "| #{mage1.name}'s Turn!"
    puts "==================================="

    mage1.display_stats

    action = mage1.choose_action

    case action
    when :cast_spell
      spell = mage1.choose_spell
      mage1.cast_spell(spell, mage2)
      mage1.recover_mp
    when :recover_mp
      mage1.recover_mp
    end

    if mage2.hp > 0

      puts "==================================="
      puts "| #{mage2.name}'s Turn!"
      puts "==================================="    

      mage2.display_stats

      action = mage2.choose_action

      case action
      when :cast_spell
        spell = mage2.choose_spell
        mage2.cast_spell(spell, mage1)
        mage2.recover_mp
      when :recover_mp
        mage2.recover_mp
      end

    end
    
  end


  if mage1.hp > 0
    puts "================== WINNER ================="
    puts "#{mage1.name} wins!"
    puts "==========================================="
  else
    puts "================== WINNER ================="
    puts "#{mage2.name} wins!"
    puts "==========================================="
  end
end

def main
  mage1 = Mage.new("Gandalf")
  mage2 = Mage.new("Saruman")
  battle(mage1, mage2)
end

main
