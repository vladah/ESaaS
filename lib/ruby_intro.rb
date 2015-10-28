# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  return arr.inject(:+)

end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sarr = arr.sort
  return sarr[-1] + sarr[-2]
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.length == 1
  narr = arr.map { |e| n - e }
  intersection = arr & narr
  return true if intersection.length >=2
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return true if s =~ /\A(?=[^aeiou])(?=[a-z])/i
  return false
end

def binary_multiple_of_4? s
  return false unless s =~ /^(0|1)[0-1]*/
  return true if s.to_i(2) % 4 == 0
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "price must be >=0" if price <= 0
    raise ArgumentError, "ISBN number must not be empty" if isbn.empty?
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    raise ArgumentError, "ISBN number must not be empty" if new_isbn.empty?
    @isbn = new_isbn
  end
  def price
    @price
  end
  def price=(new_price)
    raise ArgumentError, "price must be >=0" if new_price <= 0
    @price = new_price
  end
  
  def price_as_string
    return "$" + '%.2f' % self.price
  end
  
end
