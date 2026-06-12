def merge_sort(arr)
  return arr if arr.length <= 1
  # cut it in half

  left_arr = arr[0...arr.length / 2]; right_arr = arr[arr.length / 2...arr.length]
  output = []
  if right_arr.length == 2
    right_arr =  merge_sort(right_arr)
  end

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