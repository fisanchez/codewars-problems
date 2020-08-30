# https://www.codewars.com/kata/product-of-consecutive-fib-numbers/train/ruby

def productfib(prod)
  chunk = prod/2.ceil
  f1 = fib(chunk)
  f2 = fib(chunk + 1)
  product = f1 * f2
  return [f1, f2, true] if product = prod
  if product < prod
    productfib(prod * 2)
  elsif product > prod
    productfib(prod/2)
  else
    return [f1, f2, false]
  end
end

def fib(n)
	return n if n <= 1
	fib(n - 1) + fib(n - 2)
end

puts fib(8)


# Writeup
<<-MARKDOWN
I completely overthought this problem. It's a common issue that I face which is I try to 
walk through every step of the problem rather than figuring out a pattern which I can apply.

This one wasn't as bad as my issue was that I tried to find the largest pair which I did by 
shrinking the prod until it found a pair, the issue was that I missed a lot of numbers inbetween 
and coding to find each one would be horribly slow. I should have thought of starting from the bottom 
and working my way up.
MARKDOWN

# A solution

def solution(prod)
  # starting with the smallest possible fib pair
  a, b = [0 ,1]
  
  # continuing the fib sequence by adding two current numbers
  while prod > a * b
    a, b = [b, a+b]
  end
  
  # the only thing that changes in the return value is whether prod == a * b
  return [a, b, prod == a * b]
end