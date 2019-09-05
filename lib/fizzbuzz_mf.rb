class FizzBuzz
  def self.fizzbuzz(lower, upper)
    if error_handler(lower, upper)
      lower, upper = upper, lower if lower > upper
      (lower..upper).each do |num|
        fizzbuzz = ""
        fizzbuzz += "Fizz" if num % 3 == 0
        fizzbuzz += "Buzz" if num % 5 == 0
        puts (fizzbuzz == "" ? num : fizzbuzz)
      end
    else
      puts "Error ! Change INput Values"
    end
  end

  def self.error_handler(lower, upper)
    return (lower.is_a?(Integer) && upper.is_a?(Integer) && lower > 0 && upper > 0)
  end
end
