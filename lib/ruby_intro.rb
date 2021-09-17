# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort
  arr = arr.reverse
  if arr.length >= 2
    return arr[0]+arr[1]
  elsif arr.length == 1
     return arr[0]
  else      
    return 0   
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif (/[A-Z]/ =~ s[0].upcase && /[^AEIOU]/ =~ s[0].upcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.to_s =~ /\b[01]+\b/)
    if (s.to_i % 4 == 0)
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price

  def initialize(isbn, price)
    raise (ArgumentError) if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
