def primes_up_to(num)
  primes = [2]
  i = 3
  while i <= num
    primes << i unless primes.any? {|element| i % element == 0}
    i += 2
  end
  return primes
end


def smallest_prime_factor(num)
  return 2 if num.even?
  i = 3
  while i <= num
    return i if num%i==0
    i += 2
  end
end

def smallest_multiple(num)
  arr = primes_up_to(num)
  (2..num).to_a.each{|number| arr << smallest_prime_factor(number) unless arr.inject(:*)%number == 0}
  arr.inject(:*)
end

p smallest_multiple(20)
