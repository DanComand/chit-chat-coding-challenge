# Dan Comand
# dcomand@gmail.com
# 1-905-321-5023
# Toronto, Ontario

# Software Developer Coding Exercise - Chit Chats
#
# Task: Write IsPalindrome in any language
# A palindrome is a word, number, phrase, or other sequence of characters which reads the same backward as forward, such as madam, racecar.
#
# The method accepts one argument and it should return true if the value is a palindrome, and false if the value is not a palindrome.
#
# Examples:
#
# IsPalindrome("racecar") # true
# IsPalindrome("car") # false

# My chosen language is Ruby

require 'rspec'

# Solution #1
# A method that accepts a string as an argument, downcases the string, and then compares the string to itself reversed.

def is_palindrome?(string)
  string.downcase == string.downcase.reverse
end
#
p "Solution 1:"
p is_palindrome?("racecar") # true
p is_palindrome?("car") # false

###################################################

# Solution 2, without using the .reverse String method. Compare the first character of the string to the last character of the string,
# and if they match, move on to the second character and second last character, etc.

def is_palindrome?(string)
  string = string.downcase
  (string.size/2).times.all? { |i| string[i] == string[-i-1] }
end

p "Solution 2:"
p is_palindrome?("racecar") # true
p is_palindrome?("car") # false

###################################################

# Solution 3, similar to solution #1, but takes in to consideration an Integer being passed as an argument instead of a String.
# We convert the argument to a string to ensure it can be checked whether it's a palindrome or not.

def is_palindrome?(string)
  string.to_s.downcase == string.to_s.downcase.reverse
end

p "Solution 3:"
p is_palindrome?(1234321) # true
p is_palindrome?(12345) # false

###################################################

# Rspec Tests

describe 'Check if a string is a palindrome' do
  it 'returns true if string is a palindrome, and false if it is not' do
    expect(is_palindrome?("racecar")).to be(true)
    expect(is_palindrome?("car")).to be(false)
  end
end
