# frozen_string_literal: true

# For a string, count the amount to appareces for the letter without interruption
# E.g. for String AAABBCCAAB, should return 3A2B2C2AB
require 'pry'

def counter(last_count, letter_index, string)
  current_count = (letter_index-last_count).abs()
  "#{current_count == 1 ? '' : current_count}#{string[letter_index]}"
end

def count_letters(string)
  counter = []
  last_count = -1
  string.length.times do |letter_index|
    if string[letter_index+1].nil?
      counter << counter(last_count, letter_index, string)
      return counter.join('')
    elsif string[letter_index+1] != string[letter_index]
      counter << counter(last_count, letter_index, string)
      last_count = letter_index
    end
  end
end

# string = 'AAABBCCAAB'
# puts count_letters(string)

describe "count letters" do
  it 'counts letters correctly' do
    expect(count_letters('AAABBCCAAB')).to eq '3A2B2C2AB'
  end

  it 'counts letters correctly # 2' do
    expect(count_letters('AAAAAAA')).to eq '7A'
  end
end
