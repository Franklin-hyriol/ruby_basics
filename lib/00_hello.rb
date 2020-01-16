def input_name
	print "what your name? :"
	name = gets.chomp
	return name
end


def say_hello(fist_name)
	puts "hello #{fist_name}"
end


say_hello(input_name)


