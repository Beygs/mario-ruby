def age
  puts "T'es né en quelle année ?"
  print "> "
  birth_year = gets.chomp

  begin
    birth_year = Integer(birth_year)
    return birth_year + 100
  rescue 
    puts "\e[31m#{birth_year} n'est pas une année mon enfant !\e[0m"
    age
  end
end

centenary = age

puts centenary < Time.new.year ? "Tu as déjà 100 ans depuis #{centenary}" : centenary == Time.new.year ? "Tu as 100 ans cette année ! 🍾" : "Tu auras 100 ans en #{centenary}"