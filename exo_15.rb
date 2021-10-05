def ask_number
  puts "Combien d'étages veux-tu ?"
  print "> "
  floors = gets.chomp

  begin
    floors = Integer(floors)
    raise StandardError(range) if floors < 1 || floors > 25
    return floors
  rescue
    puts "\e[31m#{floors} n'est pas un nombre valide !\e[0m"
    ask_number
  end
end


def ask_char
  puts "\nOk, et tu veux qu'elle soit faite avec quelle caractère ?"
  print "> "
  char = gets.chomp
  
  begin
    raise StandardError.new if char.length != 1 || char == " " # erreur si l'utilisateur entre plusieurs caractères (ou aucun), ou s'il entre un espace
    return char
  rescue
    puts "\e[31mN'entres qu'un seul caractère stp\e[0m"
    ask_char
  end
end

floors = ask_number
char = ask_char

system "clear"

pyramid = []

for i in 1..floors
  pyramid << char * i
end

puts pyramid