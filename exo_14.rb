require_relative("mail_list")

puts create_mail_list.select{|mail| /\d+/.match(mail).to_s.to_i.even?} # même chose que dans l'exo 13, mais je n'affiche que les mails avec des nombres pairs