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
  json_ascii = File.open("num_to_ascii.json")
  num_to_ascii = JSON.parse(json_ascii.read)
  ascii_year = []
  year.to_s.chars.each{|n|
    ascii_year << num_to_ascii["#{n}"]
  }

  ascii_year_joined = []

  for i in 0..4
    digit = ""
    for j in 0..(year.to_s.length - 1)
      digit += "#{ascii_year[j][i]}  "
    end
    ascii_year_joined << "██  " + digit + "██"
  end

  ascii_year_joined
end

system "clear"

year = birth_year

while year <= Time.new.year
  system "clear"
  calendar = File.open("calendar.txt")
  puts calendar.read, year_to_ascii(year), "██                                          ██\n██████████████████████████████████████████████"
  year += 1
  sleep 0.1
end

puts