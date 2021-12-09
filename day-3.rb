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
# p gamma * epsi


def common(input)
  i = 0
  common = input
  while i < input[0].length do
    input = common
    common = []
    count_0 = 0
    count_1 = 0
    input.each do |binary|
      binary[i] == "0" ? count_0 += 1 : count_1 += 1
    end
    input.each do |binary|
      if count_0 > count_1
        common << binary if binary[i] == "0"
      else
        common << binary if binary[i] == "1"
      end
    end
    return common if common.length == 1
    i += 1
  end
end

def not_common(input)
  i = 0
  not_common = input
  while i < input[0].length do
    input = not_common
    not_common = []
    count_0 = 0
    count_1 = 0
    input.each do |binary|
      binary[i] == "0" ? count_0 += 1 : count_1 += 1
    end
    input.each do |binary|
      if count_0 < count_1 || count_0 == count_1
        not_common << binary if binary[i] == "0"
      else
        not_common << binary if binary[i] == "1"
      end
    end
    return not_common if not_common.length == 1
    i += 1
  end
end

p common(clean_input)
p not_common(clean_input)
oxygen = 3443
co2 = 1357
p oxygen * co2
