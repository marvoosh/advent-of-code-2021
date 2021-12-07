require 'open-uri'

clean_input = []

URI.open("day_1_input.txt") {|f|
  f.each_line {|line| clean_input << line.strip.to_i}
}

def first_challenge(input)
  i = 1
  count = 0
  while i < input.length do
    if input[i] > input[i-1]
      count += 1
    end
    i += 1
  end
  count
end

def second(input)
  i = 0
  sum = []
  while i < input.length - 2 do
    sum << input[i] + input[i+1] + input[i+2]
    i += 1
  end
  first_challenge(sum)
end

count = second(clean_input)
p count
