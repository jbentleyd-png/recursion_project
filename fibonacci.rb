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




def rec_fibs(num, initial_array = [0,1])  
  return nil unless num.is_a?(Integer) && num > 0
  
  return initial_array[0...num] if num <= 2
  initial_array << initial_array[-1] + initial_array[-2]
  
  rec_fibs(num - 1, initial_array)
  initial_array

end


p rec_fibs(1)
p fibs_it(1)

p rec_fibs(2)
p fibs_it(2)

p rec_fibs(3)
p fibs_it(3)

p rec_fibs(8)
p fibs_it(8)

