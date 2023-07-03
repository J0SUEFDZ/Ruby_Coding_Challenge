hash = { name: 'John', age: 30, city: 'New York' }

# Destructuring hash using curly braces
{ name:, age:, **other } = hash


puts name      # Output: John
puts age       # Output: 30
puts other     # Output: { city: 'New York' }
