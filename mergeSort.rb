def mergeSort(arr, l, r)
  if(l<r)
    m = l + (r - l) / 2;
    puts "at First place l=#{l} m=#{m} r=#{r}  #{arr.inspect}"
    mergeSort(arr, l, m)
    puts "at Seconf place l=#{l} m=#{m} r=#{r} #{arr.inspect}"
    mergeSort(arr, m + 1, r)
    puts "enddddddddddddddddddddddddddd"
  end
end

arr = [38,27,43,3,9,82,10]

mergeSort(arr, 0, arr.size-1)
