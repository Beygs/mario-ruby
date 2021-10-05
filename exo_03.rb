def age
  puts "Re, t'es né en quelle année ?"
  print "> "
  birth_year = gets.chomp

  # Vérification que l'entrée est un nombre, si oui je retourne l'age, si non j'affiche une erreur et redemande l'année de naissance

  begin
    birth_year = Integer(birth_year) # conversion de l'entrée utilisateur en Integer, si jamais il y a une erreur (que l'utilisateur n'a pas entré un nombre) le programme saute au bloc rescue
    return 2017 - birth_year # retourne l'age de l'utilisateur
  rescue 
    puts "\e[31m#{birth_year} n'est pas une année mon enfant !\e[0m"
    age
  end

end

user_age = age

# Affichage du résultat, avec une condition pour changer la phrase selon la date entrée

puts user_age > 120 ? "\e[33mPETIT MENTEUR !\e[0m\nTu penses vraiment que je vais croire que tu avais \e[36m#{user_age}\e[0m ans en 2017 ?!" : user_age < 16 ? "\e[36mUn peu jeune pour THP non ?\e[0m" : "\e[35mTu avais #{user_age} ans en 2017 !\e[0m Félicitations ? 🎉"