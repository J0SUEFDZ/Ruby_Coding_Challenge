# Given a number, perform the factorial operation on it, and return the result.
# e.g. factorial(5) = 5 * 4 * 3 * 2 * 1 = 120

# My approach for recursion :/
def factorial(*numbers)
  total, current = numbers
  if current == 1
    return total
  elsif current.nil?
    factorial(total, total - 1)
  else
    factorial(total * current, current - 1)
  end
end

# Better approach for recursion, from StackOverflow
def factorial(num)
  return 1 unless num > 0
  num * factorial(num - 1)
end

# Using reduce
def factorial(n)
  return 1 if n.zero?
  (1..n).reduce(:*)
end


puts factorial(5)
