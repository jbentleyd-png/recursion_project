def merge_sort(arr)
  # cut it in half

  left_arr = arr[0...arr.length / 2]; right_arr = arr[arr.length / 2...arr.length]
  if left_arr == []
    p right_arr
    return right_arr
  end

  macro_arr = []; macro_arr << left_arr; macro_arr << right_arr
  p macro_arr
  # sort each half
  macro_arr.each do |a|
    break if a.empty?
    merge_sort(a)
  end

  # merge
  # recurse?
end

merge_sort([5,2,1,3,6,4])