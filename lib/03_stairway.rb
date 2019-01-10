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



def action(dice_value, floor_value)
    
    if (dice_value == 5 || dice_value == 6)
      floor_value += 1
      puts "Tu avances d'une marche, tu es donc à la marche n°#{floor_value}"
      puts "----------------------------------------------------------"
      puts "                                                          "
      
      

    elsif (dice_value == 1)
      floor_value -= 1
      puts "Tu descends d'une marche, tu es donc à la marche n°#{floor_value}"
      puts "----------------------------------------------------------"
      puts "                                                          "
      
      

    else
      puts "Tu n'avances pas, tu es donc resté à la marche n°#{floor_value}"
      puts "----------------------------------------------------------"
      puts "                                                          "
       
      
    end
    
    return floor_value

end



def play

  floor_value=9
  dice_value = dice 
  floor_value = action(dice_value, floor_value)
  if floor_value == 10
    puts "Félicitations tu es arrivé au 10ème étage!!"
  else
    play    
  end
end


def perform

  pitch
  play
 

end

perform