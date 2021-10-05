def age_input
  puts "Entre ton âge (stp)"
  print "> "
  age = gets.chomp

  begin
    return age = Integer(age)
  rescue 
    puts "\e[31m#{age} n'est pas une année valide !\e[0m"
    age_input
  end
end

def age_progress_bar(age, year)
  bar = "\e[36m" + "█" * age + "\e[0m" + "▒" * (year) + (year == age ? "\n\nIl y a #{year} ans, tu avais la moitié de ton âge." : year == 0 ? "\n\nCette année, tu as #{age} ans !" : "\n\nIl y a #{year} ans, tu avais #{age} ans.")
  return bar
end

system "clear"

year = age_input
age = 0

while year >= 0
  system "clear"
  puts age_progress_bar(age, year), "\n"
  year -= 1
  age += 1
  sleep 0.5
end