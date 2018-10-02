states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

def urlify(string)
	string.downcase.split.join("-")
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
p imperative_urls(states)


def functional_urls(states)
	states.map{|state| urlify(state)}
end

p functional_urls(states)

def full_urls(states)
	states.map{|state| "https://example.com/" + urlify(state)}
end

p full_urls(states)


# singles: Imperative version
def imperative_singles(states)
  singles = []
  states.each do |state|
    if (state.split(/\s+/).length == 1)
      singles << state
    end
  end
  singles
end
puts imperative_singles(states).inspect

# singles: Functional version
def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end
puts functional_singles(states).inspect


def doubles1(states)
  states.select { |state| state.split.length > 1 }
end

puts doubles1(states)

def doubles2(states)
  states.select { |state| state.downcase.include?("dakota")}
end

puts doubles2(states)

def doubles3(states)
  states.select { |state| state.downcase.match(/dakota/)}
end

puts doubles3(states)


numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)


numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)

# lengths: Imperative version
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end
puts imperative_lengths(states)

# lengths: Functional version
def functional_lengths(states)
  states.reduce({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end
puts functional_lengths(states)


# lengths: Functional version using `inject`
def functional_lengths1(states)
  states.inject({}) do |lengths, state|
    lengths[state] = state.length
    lengths
  end
end
puts functional_lengths1(states)


puts "\nre-write\n"

# synomyns

#  was map


def functionals_urls3(states)
  states.collect{|state| urlify(state)}
end

p functionals_urls3(states)


# was select


def doubles3(states)
  states.reject { |state| state.split.length < 2 }
end

puts doubles3(states).inspect




#  was reduce


# lengths: Functional version using `inject`
def functional_lengths2(states)
  states.inject({}){|lengths, state| lengths[state] = state.length; lengths}
end
puts functional_lengths2(states)


