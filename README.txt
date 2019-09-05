# The main FizzBuzz driver
class FizzBuzz
# Prints each number from a range on a new line.
# For each multiple of 3, print "Fizz" instead of the number.
# For each multiple of 5, print "Buzz" instead of the number.
# For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

# Example:
#     >> FizzBuzz.fizzbuzz(1, 20)
#     => 1
#        2
#        Fizz
#        4
#        Fizz
#        Buzz
#        7
#        8
#        Fizz
#        Buzz
#        11
#        Fizz
#        13
#        14
#        FizzBuzz
#        16
#        17
#        Fizz
#        19
#        Buzz
# Arguments:
#   language: (Integer)

  def self.fizzbuzz(lower, upper)
    (lower..upper).each do |num|
      fizzbuzz = ""
      fizzbuzz += "Fizz" if num % 3 == 0
      fizzbuzz += "Buzz" if num % 5 == 0
      puts (fizzbuzz == "" ? num : fizzbuzz)
    end
  end
end
