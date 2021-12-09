require 'open-uri'

clean_input = []

URI.open("day_4_input.txt") {|f|
  f.each_line {|line| clean_input << line.strip.split}
}

clean_input.map { |row| }
