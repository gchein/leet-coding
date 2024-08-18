def quicksort(arr, low = 0, high = arr.length - 1)
  if low < high
    pivot_index = partition(arr, low, high)
    quicksort(arr, low, pivot_index - 1)
    quicksort(arr, pivot_index + 1, high)
  end
  arr
end

def partition(arr, low, high)
  # Uncomment below if want to see the recursion stack
  # p arr
  # puts "low = #{low} / high = #{high}"


  # Pick the middle element as pivot
  mid = (low + high) / 2
  arr[mid], arr[high] = arr[high], arr[mid] # Swap middle with the last element

  pivot = arr[high]
  i = low - 1
  (low...high).each do |j|
    if arr[j] <= pivot
      i += 1
      arr[i], arr[j] = arr[j], arr[i] # Swap elements
    end
  end
  arr[i + 1], arr[high] = arr[high], arr[i + 1] # Put pivot in the correct place
  i + 1
end

arr = Array.new(100) { (1..100).to_a.sample }

p arr
p quicksort(arr)
p quicksort(arr) == arr.sort
