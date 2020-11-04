arr = [1,2,3,4,5,6,7,8,9,10,11,12,13]
d=9
l = arr.length

def swap(arr, d, fi, li)
  (0..d-1).each do |i|
    temp = arr[fi+i]
    arr[fi+i] = arr[li+i]
    arr[li+i] = temp
    puts "arr " + arr.inspect
  end
end


def revrese(arr, d, l, start)

  # if(d == (l-d))
  #   swap(arr, d, start, start+d)
  # end

  if(d < (l-d))
    l = l - d
    if (l < start)
      swap(arr, d, start, l+d)
      return
    end
    puts "l   " + l.to_s + " d   " + d.to_s + " start " + start.to_s
    swap(arr, d, start, l)
    revrese(arr, d, l, start)
  end

  if(d > (l-d))
    swap(arr, l-d, start, d)
    revrese(arr, (2*d) - l, l, l-d)
  end
end

revrese(arr, d, l, 0)
puts arr.inspect