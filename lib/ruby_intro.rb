# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total = total + x
  end
  return total
end

def max_2_sum arr
  return 0 if arr.size == 0
  return arr[0] if arr.size == 1
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  return false if arr.size < 2
  arr.permutation(2).each do |pair|
    if pair[0] + pair[1] == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end


def binary_multiple_of_4? s
  if s == "0"
    return true
  elsif s == /[a-zA-Z^$3-9*]/
    return false
  else
    if /^[0-1]+$/.match(s) && s.to_i % 4 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  
 attr_accessor :isbn
 attr_accessor :price
 
 def initialize (isbn, price)
  if isbn.empty? || price <= 0
    raise ArgumentError
  end
  
  @isbn = isbn
  @price = price
 end
 
 def price_as_string
  format("$%.2f", @price)
 end
end
