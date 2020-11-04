arr = [2,19,12,43,56,22,21]
def mergeArray(arr)
  puts arr.inspect
end

def merge_sort(unsorted_array) 
  if unsorted_array.length == 1
    return unsorted_array
  end

  len = (unsorted_array.length/2).floor()
  first_half = merge_sort(unsorted_array[0..(len-1)])
  second_half = merge_sort(unsorted_array[len...unsorted_array.length])
  merge(first_half, second_half)
end

def merge(arr1, arr2)
  puts "sort #{arr1.inspect} and #{arr2.inspect}"
  sorted_arr = []
  if (arr1[0] > arr2[0])
    sorted_arr.push(arr1[0])
  else
    sorted_arr.push(arr2[0])
  end
  puts sorted_arr.inspect
end



merge_sort(arr)
