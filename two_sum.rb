# O(n^2)
def two_sum_brute_force?(arr, target)
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      unless i == j
        return true if arr[i] + arr[j] == target
      end
      j += 1
    end
    i += 1
  end
  false
end

# O(nlogn)
def okay_two_sum?(arr, target)
  sorted = arr.sort

  arr.each do |el|
    diff = target - el
    idx = binary_search(arr, diff)
    return true if !idx.nil?
  end

  false
end

def binary_search(arr, target)
  mid = arr.length / 2
  return mid if arr[mid] == target
  return nil if arr.length <= 1
  return nil if binary_search(arr[mid + 1..-1], target) == nil
  return binary_search(arr[mid + 1..-1], target) + mid + 1 if target > arr[mid]
  return binary_search(arr[0...mid], target) if target < arr[mid]
end

# O(n)
def two_sum_hash_map?(arr, target)
  hsh = Hash.new {0}
  diff = 0

  arr.each do |el|
    hsh[el] += 1
  end

  arr.each do |el|
    diff = target - el
    if diff == el
      return true if hsh[diff] > 1
    else
      return true if hsh[diff]
    end
  end

  false
end
