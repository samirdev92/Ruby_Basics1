def pitch
  puts "                                                                 "
  puts "                                                                 "
  puts "-----------------------------------------------------------------"  
  puts "-----Bienvenue dans notre version revisitée du Jeu de l'oie!-----"
  puts "                                                                 "
  puts "--Le but du jeu est d'arriver à la 10ème marche de cet escalier--"
  puts "                                                                 "
  puts "------------------------Bonne chance!!---------------------------"
  puts "-----------------------------------------------------------------"  
  puts "                                                                 "
  puts "                                                                 "
  puts "                                                                 "
  puts "                                                                 "

end


def dice

  dice_value = rand(1..6)
  print " Lance ton dé!>"
  gets.chomp
  puts "                                       "
  puts ">>>>>Lancé de dé>>>>>>: #{dice_value} !"
  gets.chomp
  puts "---------------------------------------"
  return dice_value

end


def action(dice_value)

    
floor = 9
  if floor == 10
      puts " Félicitations, tu as gagné!"

  else
    if (dice_value == 5 || dice_value == 6)
      floor += 1
      puts "Tu avances d'une marche, tu es donc à la marche n°#{floor}"
      puts "----------------------------------------------------------"
      puts "                                                          "
      
      play

    elsif (dice_value == 1)
      floor -= 1
      puts "Tu descends d'une marche, tu es donc à la marche n°#{floor}"
      puts "----------------------------------------------------------"
      puts "                                                          "
      
      play

    else
      puts "Tu n'avances pas, tu es donc resté à la marche n°#{floor}"
      puts "----------------------------------------------------------"
      puts "                                                          "
      
      play
    end
  end

end

def play
  dice_value = dice 
  action(dice_value)
end


def perform

  pitch
  play
 

end

perform