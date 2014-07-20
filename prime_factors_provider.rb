# returns prime factors of a given number
class PrimeFactorsProvider

  def prime_factors(number)
    factors = []

    if Prime.prime? number
      factors.push number
    else
      handle_non_prime number, factors
    end

    factors
  end

  def handle_non_prime(number, factors)
    Prime.each(nearest_root_for number) do |prime|
      if number % prime == 0
        factors.push prime
        factors.concat prime_factors(number / prime)
        break
      else
        next
      end
    end
  end

  def nearest_root_for(number)
    (Math.sqrt number).ceil
  end

  private :handle_non_prime, :nearest_root_for
end
