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
    max1,max2=max2,max1
  end
  
  for i in 2..arr.size
    if arr[i]>max1
      max1,max2 = arr[i],max1
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
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
