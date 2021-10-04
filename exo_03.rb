def age
  puts "Re, t'es né en quelle année ?"
  print "> "
  birth_year = gets.chomp

  # Vérification que l'entrée est un nombre

  begin
    birth_year = Integer(birth_year)
  rescue 
    puts "\e[31m#{birth_year} n'est pas une année mon enfant !\e[0m"
    age
  end
  age = 2017 - birth_year

  # Affichage du résultat, avec une condition pour changer la phrase selon la date entrée

  age > 120 ? "\e[33mPETIT MENTEUR !\e[0m\nTu penses vraiment que je vais croire que tu avais \e[36m#{age}\e[0m ans en 2017 ?!" : age < 16 ? "\e[36mUn peu jeune pour THP non ?\e[0m" : "\e[35mTu avais #{age} ans en 2017 !\e[0m Félicitations ? 🎉"
end

puts age