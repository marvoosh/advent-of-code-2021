require 'open-uri'

clean_input = []

URI.open("day_3_input.txt") {|f|
  f.each_line {|line| clean_input << line.strip}
}

# epsi calsulator
i = 0
final_binary = ""
while i < clean_input[0].length do
  count_0 = 0
  count_1 = 0
  clean_input.each do |binary|
    binary[i] == "0" ? count_0 += 1 : count_1 += 1
  end
  count_0 > count_1 ? final_binary += "1" : final_binary += "0"
  i += 1
end

#  p final_binary
gamma = 3808
epsi = 287
p gamma * epsi
