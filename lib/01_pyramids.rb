def etage
	puts "salut bienvenue dans mon super pyramide!"
	print "Combien d'etage veux-tu ? :"
	nbr_etage = gets.chomp.to_i

	if nbr_etage < 3 
		print "Entrer un nombre > 2"
	else
		return nbr_etage
	end
end


def half_pyramid(nbr_etage)
	for i in 1..nbr_etage
		for j in 1..i
			print "#"
		end
		puts " "
	end
end



def full_pyramid(nbr_etage)
	for i in 1..nbr_etage
		for j in i..nbr_etage
			print " "
		end

		for k in 1..i*2-1
			print "#"
		end
		puts " "
	end
end

k = 0
i = 0

def wtf_pyramid(nbr_etage)
	if nbr_etage % 2 == 0
		puts "Entrer un nombre impaire"
	else
		for i in 1..nbr_etage
			for j in i..((nbr_etage/2)-0.5)+1
				print " "
			end

			for k in 1..i*2-1
				break if k == nbr_etage + 1
				print "#" 
			end
			puts " "
			break if k == nbr_etage
		end

			for i in 1..nbr_etage
				for j in 1..i
					break if i >= ((nbr_etage/2)-0.5)+1
					print " "
				end


				(nbr_etage-i-i).downto(1) do |k|
					if i <= 1
						print "#"
					else
						print "#"
					end
				end
				puts " "
				break if i >= ((nbr_etage/2)-0.5)
			end
	end
end


wtf_pyramid(etage)

