class ErrorHandler

  #check all conditions satisfy or not
  def self.error_handler(*args)
    invalid_no_argument(*args) && integerornot(*args) && check_negative(*args) && check_lower_and_upper(*args)
  end

  #split arguments into lower and upper limits
  def self.split_arguments(*args)
    lower = args[0]
    upper = args[1]
    return lower, upper
  end

  #check for invalid no of arguments
  def self.invalid_no_argument(*args)
    raise "Invalid Number of Arguments" unless args.length == 2
    true
  end

  #check if Integer or not
  def self.integerornot(*args)
    lower, upper = split_arguments(*args)
    raise "Input is not an integer" unless lower.is_a?(Integer) && upper.is_a?(Integer)
    true
  end

  #check if the argument are negative or not
  def self.check_negative(*args)
    lower, upper = split_arguments(*args)
    raise "Input is a negative value" unless lower > -1 && upper > -1
    true
  end

  #checl if upper limit is greater than lower limit
  def self.check_lower_and_upper(*args)
    lower, upper = split_arguments(*args)
    raise "lower limit is higher than upper limit" unless lower < upper
    true
  end

end
