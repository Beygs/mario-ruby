system 'clear' # Nettoyage de l'écran de la console

puts "Encore toi ?!"

def repeat
  puts "Entre un nombre"
  print "> "
  repeatTimes = gets.chomp

  begin
    return repeatTimes = Integer(repeatTimes)
  rescue 
    puts "\e[31m#{repeatTimes} n'est pas un nombre !\e[0m"
    repeat
  end
end

salut = " " * 500 + "\e[36mSalut, ça farte ?\e[0m"
salut = salut * repeat

300.times do
  system 'clear'
  puts salut
  salut.slice!(0, 1) # Efface un espace au début
  sleep(0.04) # Delay de 0.4 secondes
end

puts "Si tu veux une autre version un peu rigolote du même exo, rdv dans le fichier exo_05_bonus ;)"