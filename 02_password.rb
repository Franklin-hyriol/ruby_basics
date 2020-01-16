

def signup
	puts "----SINGUP---"
	print "your name :"
	nom = gets.chomp
	print "your password :"
	passwd = gets.chomp

	if passwd.nil?
		puts "invalid password"
	else
		return passwd
	end
end

def login(psswd)
	puts "---LOGIN---"

	print "your password : "
	mdp = gets.chomp

	until mdp == psswd
		puts "wrong password"
		print "your password: "
		mdp = gets.chomp
	end
end

def welcome_screen
	puts "welcome"
	print "secret:donald Trump et une salopard"
end
	

login(signup)
welcome_screen