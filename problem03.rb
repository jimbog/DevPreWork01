def smallest_prime_factor(num)
  return 2 if num.even?
  i = 3
  while i <= num
    return i if num%i==0
    i += 2
  end
end

def largest_prime_factor(num)
  return num if smallest_prime_fasctor(num) == num
  largest_prime_factor(num/smallest_prime_factor(num))
end

p largest_prime_factor(600851475143)
