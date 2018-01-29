# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	ret = 0
	arr.each {|x| ret+= x}
	return ret
end

def max_2_sum arr
	if arr.empty?
		return 0
	elsif arr.length == 1 
		return arr[0]
	end
	arr_sorted = arr.sort
	return arr_sorted[-1] + arr_sorted[-2]
end

def sum_to_n? arr, n
	if arr.empty? || arr.length == 1
		return false
	end
	arr.combination(2).to_a.each { |combo| 
		return true if sum(combo) == n}
end

# Part 2

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant? s
	return true if (s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
	if s =~ /^[0-1]+$/
		return s.to_i(2) % 4 == 0 unless s == "0"
	end
	false
end

# Part 3

class BookInStock
	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%.2f", @price)
	end
end
