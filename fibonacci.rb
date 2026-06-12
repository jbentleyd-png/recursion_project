# iterated version:

def fibs_it(num)
  return nil unless num.is_a?(Integer) && num > 0
  initial_array = [0,1]

  if num > 2 
    i = 0 
    while i < num
      initial_array << initial_array[-1] + initial_array[-2]
      i += 1
    end
  end

  return initial_array[0...num]
end

p fibs_it(1)
p fibs_it(2)
p fibs_it(3)
p fibs_it(8)

