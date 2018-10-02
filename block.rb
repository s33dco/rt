def sandwich
	puts 'top bread'
	yield
	puts 'bottom bread' 
end

sandwich{puts 'mutton. lettuce and tomato'}

def tag (tagname, text)
	html = "<#{tagname}>#{text}</#{tagname}>"
	yield html
end

tag("p", "Lorem ipsum dolor sit amet"){|markup| puts markup}


99.downto(1) do | n |
	if n > 1
		puts "#{n} bottles of beer on the wall"
	else
		puts "only #{n} bottle of beer on the wall"
	end
end
