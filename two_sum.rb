#Time complexity O(n^2)
def two_sum?(arr, target_sum)
  arr.each_with_index do |num1, idx1|         #O(n)
    arr.each_with_index do |num2, idx2|       #O(n)
      unless idx1 == idx2
        return true if num1 + num2 == target_sum
      end 
    end 
  end 
  
  false 
end 


#Time complexity O(n^2) at worst case
def okay_two_sum?(arr, target_sum)
  sorted = arr.sort                   #O(n^2)
    
  arr.each do |el|                        #O(n)
    search_num = target_sum - el 
    exists = sorted.bsearch { |x| x == search_num }       #O(log n)   --> O(n logn)
    return true if exists 
  end 
  
  return false
end 

#Time complexity O(n)
def two_sum_hash?(arr, target_sum)
  array_hash = Hash.new
  arr.each do |el|              #O(n)
    array_hash[el] = :true
  end
  
  arr.each do |el|              #O(n)
    result = target_sum - el
    return true if array_hash[result]
  end 
  
  return false
end