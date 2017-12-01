require 'to_words'
require 'pry'



def magic_four(num)
  num = num.to_i
  if num.to_words.length > 4 || num.to_words.length == 3
    puts "#{num} is #{num.to_words.length}"
    length = num.to_i.to_words.length
    magic_four(length)
  else
    puts "#{num} is 4"
    puts "4 is the magic number!"
    again?
  end
end

def start
  puts "Enter a number and I will give you the magic"
  magic = gets.chomp
  if magic =~ /\d/
    magic_four(magic)
  else
    puts 'Please enter a vaild number'
    start
  end
end

def again?
  puts "Would you like to check another number?"
  puts "1) Yes"
  puts "2) No"
  input = gets.to_i

  input == 1 ? start : exit

end

start
