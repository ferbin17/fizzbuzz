class FizzBuzz
  def self.fizzbuzz(*args)
    if error_handler(args)
      (args[0]..args[1]).each do |num|
        fizzbuzz = ""
        fizzbuzz += "Fizz" if num % 3 == 0
        fizzbuzz += "Buzz" if num % 5 == 0
        puts (fizzbuzz == "" ? num : fizzbuzz)
      end
    else
      puts "Error ! Change Input Values"
    end
  end

  def self.error_handler(args)
    begin
      raise "Invalid Number of Arguments" unless args.length == 2
      lower = args[0]
      upper = args[1]
      raise "Input is not an integer" unless lower.is_a?(Integer) && upper.is_a?(Integer)
      raise "Input is a negative value" unless lower > -1 && upper > -1
      raise "lower limit is higher than upper limit" unless lower < upper
    end
    return true
  end
end
