system 'clear'

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

line = "●" * (repeatTimes - 1)
line.insert(line.length, "○")

repeatTimes.times{|i|
  system "clear"
  n = repeatTimes - i # Même chose que dans l'exo d'avant mais à l'envers
  puts line, " " * (n - 1) + n.to_s
  line = line.insert(line.length, "●")
  line.slice!(0, 1)
  sleep 1
}

system "clear"
line = "●" * repeatTimes
puts "#{line} C'est fini !"