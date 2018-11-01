#Time complexity is O(n^2)
def my_min_p1(arr)
  arr.each do |el1|         #O(n)
    smallest = true         #O(1)
    arr.each do |el2|       #O(n) --> #O(n^2)
      smallest = false if el1 < el2   #O(1)
    end 
    
    return el1 if smallest    #O(1)
  end
end

#Time complexity is O(n)
def my_min_p2(arr)
  min = arr[0]        #O(1)
  arr.each do |el|    #O(n)
    if el < min       #O(1)
      min = el        #O(1)
    end 
  end 
  
  min           #O(1)
end


def sub_sum_p1(arr)
  sub_arr = []              #0(1)
  
  arr.each_index do |i1|      #O(n)
    arr.each_index do |i2|    #O(n) --> O(n^2)
      sub_arr << arr[i1..i2] if i2 >= i1  
    end 
  end 
  
  sums = []
  sub_arr.each do |subs|      #O(n) --> O(n^2) + #O(n)
    sums << subs.reduce(:+) 
  end 
  
  sums.max
end 

def sub_sum_p2(arr)
  max_sum = 0
  temp_sum = 0
  arr.each do |el|
    temp_sum += el 
    max_sum = temp_sum if temp_sum > max_sum
    temp_sum = 0 if temp_sum <= 0
  end 
  max_sum
  
end  