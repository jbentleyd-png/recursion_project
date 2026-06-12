def merge_sort(arr)
  # edge cases:
  return arr if arr.length <= 1

  # cut it in half:
  left_arr = arr[0...arr.length / 2]; right_arr = arr[arr.length / 2...arr.length]

  # recurse:
  if right_arr.length >= 2
    left_arr = merge_sort(left_arr); right_arr =  merge_sort(right_arr)
  end
  
  # sort:
  output = []
  until left_arr.empty? || right_arr.empty?
    left_arr[0] < right_arr[0] ? output << left_arr.delete_at(0) : output << right_arr.delete_at(0)
  end
    left_arr.empty? ? output += right_arr : output += left_arr
  output
end



p merge_sort([])
p merge_sort([73])
p merge_sort([2, 1])
p merge_sort([3, 2, 1])
p merge_sort([4, 3, 2, 1])
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])