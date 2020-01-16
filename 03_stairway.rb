def escalier(nombre)
	system "clear"
	puts "      
	        STAIRWAY"
	case nombre
		when 1
puts "
    ___
       |___
           |___
               |___
                   |___
                       |___
                           |___
                               |___
                                   |___
                                       |(oo)"
		when 2
puts "
    ___
       |___
           |___
               |___
                   |___
                       |___
                           |___
                               |___
                                   |(oo)
                                       |"

		when 3
puts "
    ___
       |___
           |___
               |___
                   |___
                       |___
                           |___
                               |(oo)
                                   |___
                                       |"

		when 4
puts "
    ___
       |___
           |___
               |___
                   |___
                       |___
                           |(oo)
                               |___
                                   |___
                                       |"

		when 5
puts "
    ___
       |___
           |___
               |___
                   |___
                       |(oo)
                           |___
                               |___
                                   |___
                                       |"                                        
        	
		when 6
puts "
    ___
       |___
           |___
               |___
                   |(oo)
                       |___
                           |___
                               |___
                                   |___
                                       |"

		when 7
puts "
    ___
       |___
           |___
               |(oo)
                   |___
                       |___
                           |___
                               |___
                                   |___
                                       |"

		when 8
puts "
    ___
       |___
           |(oo)
               |___
                   |___
                       |___
                           |___
                               |___
                                   |___
                                       |"

		when 9
puts "
    ___
       |(oo)
           |___
               |___
                   |___
                       |___
                           |___
                               |___
                                   |___
                                       |"

		when 10
puts "
    (oo)
       |___
           |___
               |___
                   |___
                       |___
                           |___
                               |___
                                   |___
                                       |"
end
end

#----------------------------------------------------------------------------------#

def quitter 
	system "clear"
	   exit
end

#----------------------------------------------------------------------------------#

def victoire
	system "clear"
	puts "VICTORY :)"
	escalier (10)
	print "Entrer pour quitter"
	gets.chomp
	system "clear"
	exit
end                                                                                                                                                          

#----------------------------------------------------------------------------------#

def game_over
	system "clear"
	puts "

			GAME OVER :(

	"
	print "Entrer pour quitter"
	gets.chomp
	system "clear"
	exit
end

#----------------------------------------------------------------------------------#

def aide 
	system "clear"
	puts "face 5 ou 6, vous avancez d'une marche"
	puts "face 1 vous descendez d'une marche"
	puts "face 2, 3, ou 4 pas de changement"
	puts "
			Bonne chance

	"
	print "Entrer pour revenir au menu"
	gets.chomp
	welcome
end

def nouvelle_partie
	game = true
	niveau = 1
	average_finish_time = 100

	escalier(niveau)
	puts "Entrer 'a' pour lancer le dE 'q' pour quitter: "
	puts "nombre de chance:#{average_finish_time}"
	puts "niveau: #{niveau}"
	print "---> "
	choix = gets.chomp

	n = 0
	
	while game
		average_finish_time -= 1
		if choix == "a"
			n = rand(1..6)

			if n == 5 || n == 6
				niveau+=1
			elsif n == 1
				niveau-=1
				if niveau <= 0
					niveau = 1
				end
			else
				puts "pas de changement"

			end
			escalier(niveau)
			puts "Entrer 'a' pour lancer le dE 'q' pour quitter: "
			puts "nombre de chance:#{average_finish_time}"
			puts "face :#{n}"
			puts "niveau: #{niveau}"
			print "---> "
			choix = gets.chomp		
		elsif choix == "q"
			quitter
		else
			escalier(niveau)
			puts "->chiox invalide!"
			puts "Entrer 'a' pour lancer le dE 'q' pour quitter: "
			puts "nombre de chance:#{average_finish_time}"
			puts "niveau: #{niveau}"
			print "---> "
			choix = gets.chomp
		end



		if average_finish_time == 0
			game_over
		end

		if niveau == 10
			victoire
		end

	end
end

#----------------------------------------------------------------------------------#

def welcome
	system "clear"
	choix = 0
	puts "---WELCOME TO STAIRWAY---"
	puts " "
	puts "1:Nouvelle partie"
	puts "2:Aide "
	puts "3:Quitter"
	puts " "
	print "Votre choix: "
	choix = gets.chomp.to_i

	until choix == 1 || choix == 2 || choix == 3
			puts " "
			puts "choix invalide !"
			print "Votre choix: "
			choix = gets.chomp.to_i
	end

	case choix
		when 1
			nouvelle_partie

		when 2
			aide

		when 3
			quitter
	end
end	

#----------------------------------------------------------------------------------#

welcome