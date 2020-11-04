arr = [1, -1,-2,-2, 1, 2, 3, -4, -5, 6, -1, -3]
l = arr.length

def swap(arr, a, b)
  temp = arr[a]
  arr[a] = arr[b]
  arr[b] = temp
end

fi = 0
li = l-1
while(fi < li)
  puts " fi " + fi.to_s + " li " + li.to_s
  if arr[fi] < 0 && arr[li] > 0
    li = li - 1
    fi = fi + 1
  end

  if arr[fi] > 0 && arr[li] < 0
    swap(arr, li, fi)
    li = li - 1
    fi = fi + 1
  end

  if arr[fi] > 0 && arr[li] > 0
    li = li  - 1
  end

  if arr[fi] < 0 && arr[li] < 0
    fi = fi + 1
  end
  
  puts arr.inspect
end


