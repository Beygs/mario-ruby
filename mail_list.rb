def create_mail_list
  mail_list = []

  # J'ai été choppé deux fichiers sur le site de l'insee qui me donne une liste de noms pour l'un, de prénoms pour l'autre, pour avoir des noms et prénoms aléatoires dans mes adresses mail

  name = File.read("nat2020.csv").split[rand(123..667364)].split(";")[1].downcase # choisis un prénom aléatoire dans nat2020.csv puis le mets en forme
  last_name = File.read("noms2008nat_txt.txt").split("\n")[rand(0..218983)].split(" ")[0].downcase #même chose pour les noms de famille

  for i in 1..50
    mail_list << "#{name}.#{last_name}.#{i.to_s.rjust(2, "0")}@email.fr" # ajoute un mail à mail_list, avec le prénom et le nom choisis précédemment + un nombre entre 01 et 50
  end
  mail_list # retourne le tableau mail_list
end