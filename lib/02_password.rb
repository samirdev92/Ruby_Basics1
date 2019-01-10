def signup
  print "Veuillez créer un mot de passe:  > "
  password = gets.chomp
  return password
end

def login(password)
  print"Veuillez saisir votre mot de passe pour accéder à l'écran d'acceuil:  > "
  user_entry = gets.chomp
  if (user_entry==password)
    welcome_screen
  else
    puts " ERREUR, Veuillez recommencer"
    login(password)
  end

end

def welcome_screen
 puts "BIENVENUE!"
end

def perform
  password=signup
  login(password)
end

perform