
#Time complexity is factorial (O(n!)) - permutations 
def first_anagram?(str1, str2)
  anagrams = str1.chars.permutation.to_a        
  anagrams.map!(&:join)
  anagrams.include?(str2)
end

#Time complexity is  O(n^2)
def second_anagram?(str1, str2)   
  array = str2.chars 
  str1.each_char do |ch|          #O(n)
    idx = array.find_index(ch)    #O(n)
    return false if idx == nil 
    array.delete_at(idx)    #O(1) because you just go directly to index?
  end
  array.empty? 
end 


#time complexity is O(n^2) because Ruby's sort uses quick sort which is O(n^2)
def third_anagram?(str1, str2)
  str1.sort == str2.sort
end

#Time complexity is O(n) because each loop is not nested 
def fourth_anagram?(str1, str2)
  letter_hash = Hash.new(0)
  
  str1.chars.each do |ch|       #O(n)
    letter_hash[ch] += 1
  end 
    
  str2.chars.each do |ch|       #O(n) --> #O(n) + O(n)
    letter_hash[ch]-= 1
  end 
  
  letter_hash.values.all? { |v| v == 0 }    #O(1)
end 



