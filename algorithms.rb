def my_min_phase_one(arr)
  smallest = arr[0]

  arr.each_with_index do |el1, i|
    check = true
    arr.each_with_index do |el2, j|
      next if i == j
      if el2 < el1
        check = false
      end
    end
    next if check == false
    smallest = el1
  end

  smallest
end

def my_min_phase_two(arr)
  smallest = arr[0]

  arr.each do |el|
    smallest = el if el < smallest
  end

  smallest
end

def largest_contiguous_sub_sum(arr)
  i = 0
  temp_sum = 0

  while i < arr.length
    j = i
    temp_sum2 = 0
    while j < arr.length
      temp_sum2 += arr[j]
      if temp_sum2 > temp_sum
        temp_sum = temp_sum2
      end
      j += 1
    end
    i += 1
  end

  temp_sum
end

def largest_contiguous_sub_sum_two(arr)
  sum = 0
  curr_sum = 0

  arr.each do |el|
    curr_sum += el
    sum = curr_sum if curr_sum > sum
    curr_sum = 0 if curr_sum < 0
  end

  sum
end

p largest_contiguous_sub_sum_two([5,6,7,-5, 6])
