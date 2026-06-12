def merge_sort(arr)
  # cut it in half
  left_arr = arr[0...arr.length / 2]
  right_arr = arr[arr.length / 2...arr.length]
  p left_arr
  p right_arr
  # sort each half
  # merge
  # recurse?
end

merge_sort([5,2,1,3,6,4])