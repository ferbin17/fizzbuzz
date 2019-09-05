class FizzBuzz
  def fizzbuzz(lower, upper)
    (lower..upper).each do |num|
      fizzbuzz = ""
      fizzbuzz += "Fizz" if num % 3 == 0
      fizzbuzz += "Buzz" if num % 5 == 0
      puts (fizzbuzz == "" ? num : fizzbuzz)
    end
  end
end
