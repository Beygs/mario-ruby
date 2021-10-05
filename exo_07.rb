system 'clear' # Nettoyage de l'écran de la console

def repeat
  puts "Entre un nombre (stp)"
  print "> "
  repeatTimes = gets.chomp

  begin
    return repeatTimes = Integer(repeatTimes)
  rescue 
    puts "\e[31m#{repeatTimes} n'est pas un nombre !\e[0m"
    repeat
  end
end

repeatTimes = repeat

line = "●" * (repeatTimes - 1) # je fais une ligne avec le caractère "●" répété le nombre de fois que l'utilisateur a entré - 1
line.insert(0, "○") # j'ajoute un caractère "○" au début de la ligne

repeatTimes.times{|i|
  system "clear"
  puts line, " " * i + (i + 1).to_s # affiche line sur une ligne, et le nombre sur la ligne d'en dessous avec des espaces qui permettent aux deux de s'aligner
  line = line.insert(0, "●") # j'ajoute un caractère "●" au début de la chaîne de caractères
  line.slice!(line.length - 1, line.length) # je retire un caractère à la fin
  sleep 1 # delay d'une seconde entre chaque itération
}