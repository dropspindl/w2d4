
def max_windowed_range(array, window_size)
  current_max_range = nil 
  array.each_index do |idx|
    window = array[idx..idx + window.size] unless idx + window.size > window.size
  end 
end 