require 'net/http' # charge la librairie Net::HTTP de ruby pour pouvoir faire des requêtes html
require 'cgi' # charge la librairie CGI (Common Gateway Interface) pour mettre en forme ma requête http

system "clear" # efface l'écran du terminal

puts "\e[31m⚠️ Mets-toi en plein écran pour être sûr que tout s'affiche bien ⚠️\nAh et aussi, les polices d'écriture sont choisies aléatoirement parmis 418 différentes et il y en a d'assez chelou, \ndonc si tu n'arrives pas à lire n'hésites pas à relancer le script 😉\n\e[0m"
puts "Hey dis-moi, \e[36mc'est quoi ton nom ?\e[0m"
print "> "
name = gets.chomp

name_url = CGI.escape(name) # mise en forme du texte pour qu'il puisse être mis dans une URL sans encombres

font_list = Net::HTTP.get("artii.herokuapp.com", "/fonts_list").split # requête http pour obtenir la lite des fonts de l'API artii.heroku.com

salut = Net::HTTP.get("artii.herokuapp.com", "/make?text=Salut&font=#{font_list[rand(0..(font_list.length - 1))]}") # requête http pour avoir "salut" en ASCII art
ascii_name = Net::HTTP.get("artii.herokuapp.com", "/make?text=#{name_url}&font=#{font_list[rand(0..(font_list.length - 1))]}") # Même chose pour le nom

system "clear"

puts "\n#{"\e[#{rand(31..37)}m#{salut}\e[0m"}" # affichage avec couleur aléatoire de "salut"
puts "#{"\e[#{rand(31..37)}m#{ascii_name}\e[0m"}" # affichage avec couleur aléatoire du nom