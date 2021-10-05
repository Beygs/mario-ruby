require 'json'

def birth_year
  puts "Entre ton année de naissance (stp)"
  print "> "
  year = gets.chomp

  begin
    return year = Integer(year)
  rescue 
    puts "\e[31m#{year} n'est pas une année valide !\e[0m"
    birth_year
  end
end

def year_to_ascii(year)
  # j'ouvre le fichier num_to_ascii.json et je le transforme en hash
  json_ascii = File.open("num_to_ascii.json") 
  num_to_ascii = JSON.parse(json_ascii.read)
  ascii_year = []

  # conversion de chaque chiffre de l'année en son équivalent en ascii puis stockage dans le tableau ascii_year
  year.to_s.chars.each{|n|
    ascii_year << num_to_ascii["#{n}"]
  }

  ascii_year_joined = []

  for i in 0..4
    digit = ""
    for j in 0..(year.to_s.length - 1)
      digit += "#{ascii_year[j][i]}  " # je mets tous les chiffres en ascii côte à côte
    end
    ascii_year_joined << "██  " + digit + "██" # j'ajoute les bords du calendrier
  end

  ascii_year_joined
end

system "clear"

year = birth_year # demande l'année de naissance de l'utilisateur via la méthode birth_year et la stocke dans la variable year

while year <= Time.new.year # si year est inférieur ou égal à cette année
  system "clear"
  calendar = File.open("calendar.txt") # j'ouvre le fichier calendar.txt qui contient le haut de mon calendrier
  # j'affiche le haut du calendrier, mon année, puis le bas du calendrier
  puts calendar.read, year_to_ascii(year), "██                                          ██\n██████████████████████████████████████████████" 
  year += 1 # année suivante
  sleep 0.1 # delay pour que l'animation n'aille pas trop vite
end

puts