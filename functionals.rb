def spacer
  puts "\n---------\n"
end

states = ['North Dakota', 'South Dakota', 'California', 'South Dakota']

nice = states.map{|state| state.downcase.split().join("-") }

spacer

p nice

spacer

p states

spacer

puts 'symbol to proc where method is called on every element .map(&:downcase)'

a =['TONY', 'DAVID', "GUY", "FRANK"].map(&:downcase)
puts a

spacer

def urlify(string)
  string.downcase.split.join('-')
end

def functional_urls(states)
  states.map{|state| urlify(state)}
end
p functional_urls(states)

spacer

evens = (1..8).select(&:even?)

puts evens

spacer

puts 'reduce'

spacer

plus = (1..10).reduce(:+)

puts plus

spacer

numbers = (1..10)

puts numbers.reduce{|total, n| total += n }

spacer

words = %w[ cat dog giraffe dinosaur leopard tiger crocodile]

def functional_lengths(words)
  words.reduce({}) do |lengths, word| # empty hash as initial value
    lengths[word] = word.length
    lengths                           # return empty hash
  end

  # words.reduce({}){|length, word| lengths[word] = word.length; lengths} - or on one line with the ; seperating the return
end

p functional_lengths(words)

spacer

  longest = words.reduce do |memo, word|
     memo.length > word.length ? memo : word
  end

  p longest
