# Given a list of integers, find the second largest number in the list. Without sorting
require 'rspec'

def second_largest(array)
  largests = [0, 0]
  array.each do |num|
    p largests
    if largests[0] < num
      largests[1] = largests[0]
      largests[0] = num
    elsif largests[1] < num
      largests[1] = num
    end
  end
  p largests[1]
end

array = Array.new(10) { rand(1..100) }
# p array
# p array.sort
# second_largest(array)

describe "second largest number" do
  it "show the correct number" do
    expect(second_largest(array)).to eq(array.sort[-2])
  end
end
