# exo 15 et pyramid combinés !

def ask_number
  puts "Combien d'étages veux-tu ?"
  print "> "
  floors = gets.chomp

  begin
    return floors = Integer(floors)
  rescue 
    puts "\e[31m#{floors} n'est pas un nombre !\e[0m"
    ask_number
  end
end


def ask_char
  puts "\nOk, et tu veux qu'elle soit faite avec quelle caractère ?"
  print "> "
  char = gets.chomp
  
  begin
    raise StandardError.new if char.length != 1 || char == " "
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
  pyramid << (char * i).rjust(floors, " ") + (char * (i - 1)) # chars * (i - 1) permet d'avoir toujours une chaine de caractères avec un nombre impair de caractères (pour faire la pointe ;))
end

puts pyramid