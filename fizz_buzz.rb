# fizz_buzz
module FizzBuzz
  def self.of(number)
    result = ''
    if (number % 3 == 0)
      result << 'Fizz'
    end

    if (number % 5 == 0)
      result << 'Buzz'
    end

    if (result == '')
      result << number.to_s
    end

    result
  end
end
