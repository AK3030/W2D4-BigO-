def windowed_max_range_naive(arr, window_size)
  i = 0
  j = window_size - 1
  current_max_range = 0

  while j < arr.length

    temp_max = arr[i..j].max
    temp_min = arr[i..j].min
    temp_range = temp_max - temp_min
    current_max_range = temp_range if temp_range > current_max_range
    i+=1
    j+=1
  end
  current_max_range
end
