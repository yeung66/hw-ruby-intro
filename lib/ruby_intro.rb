# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ans = 0
  for i in arr
    ans = ans + i
  end
  ans
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.size==1
    return arr[0]
  end
  max1=arr[0]
  max2=arr[1]
  
  
  if max1<max2
    temp = max1
    max1 = max2
    max2 = max1
  end
  
  for i in 2..arr.size-1
    if arr[i]>max1
    # if max1<max2
        # temp = max1
        
        max2 = max1
        max1 = arr[i]
    elsif arr[i]>max2
      max2=arr[i]
    end
      
  end
  max1+max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size<2
    return false
  else
    dict = Hash.new
    for i in arr
      if dict.key? i
        return true
      else
        dict[n-i]=1
      end
    end
  end
  false
      
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  aeiou = 'aeiou'
  temp_s = s.downcase
  for i in 0..4
    if temp_s[0] == aeiou[i]
      return false
    end
  end
  temp_s[0]>='a'&&temp_s[0]<='z'
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # ans = 0
  if s.empty?
    return false
  end
  for i in 0..s.size-1
    if !(s[i]=='0'||s[i]=='1')
      return false
    end  
  end
  # puts s.to_i(2)
  s.to_i(2)%4==0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.class!=String || isbn.empty?
      raise ArgumentError
    end
    if price<=0
      raise ArgumentError
    end
    @isbn,@price = isbn,price
  end
    
  attr_accessor :isbn, :price
  
  def price_as_string
    "$%.2f".% @price
  end
end
