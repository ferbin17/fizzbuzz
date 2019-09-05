Dir.chdir(File.dirname(__FILE__))
require './errorhandler'
class FizzBuzz < ErrorHandler
  def self.fizzbuzz(*args)
    if error_handler(*args)
      (args[0]..args[1]).each do |num|
        fizzbuzz = ""
        fizzbuzz += "Fizz" if num % 3 == 0
        fizzbuzz += "Buzz" if num % 5 == 0
        puts (fizzbuzz == "" ? num : fizzbuzz)
      end
    end
  end
end
