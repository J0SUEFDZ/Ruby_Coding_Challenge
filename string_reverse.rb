# Reverse a string, without using the reverse method

def reverse_string(str)
  str.map(&:chr)
end

puts reverse_string("hello")
