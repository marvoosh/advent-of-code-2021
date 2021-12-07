require 'open-uri'

clean_input = []

URI.open("day_2_input.txt") {|f|
  f.each_line {|line| clean_input << line.strip.split}
}

def horizontal(input)
  sum = 0
  input.each do |x|
    action, num = x
    if action == "forward"
      sum += num.to_i
    end
  end
  sum
end

def depth(input)
  sum = 0
  input.each do |x|
    action, num = x
    if action == "down"
      sum += num.to_i
    elsif action == "up"
      sum -= num.to_i
    end
  end
  sum
end

def total(input)
  horizontal_sum = 0
  depth_sum = 0
  aim = 0
  input.each do |x|
    action, num = x
    if action == "forward"
      horizontal_sum += num.to_i
      depth_sum += aim * num.to_i
    elsif action == "down"
      aim += num.to_i
    else
      aim -= num.to_i
    end
  end
  depth_sum * horizontal_sum
end
# p horizontal(clean_input) * depth(clean_input)
p total(clean_input)
