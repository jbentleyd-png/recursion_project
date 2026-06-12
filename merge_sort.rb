def merge_sort(arr)
  # cut it in half

  left_arr = arr[0...arr.length / 2]; right_arr = arr[arr.length / 2...arr.length]


  macro_arr = []
  
  if left_arr.empty?
    macro_arr << right_arr
  else 
    macro_arr << left_arr; macro_arr << right_arr
  end 
  p macro_arr
  return macro_arr if left_arr.empty?
  # sort each half
  macro_arr.each do |a|
    merge_sort(a)
  end

  


  # merge
  # recurse?
end

merge_sort([5,2,1,3,6,4])