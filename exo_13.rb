# Comme je réutilise mail_list dans plusieurs exos, je l'ai codé dans un autre fichier mail_list.rb que je peux appeler avec require_relative
require_relative("mail_list")

puts create_mail_list # j'affiche le résultat de la méthode create_mail_list (qui est dans le fichier mail_list.rb)