a = [2, 7, 9, 5, 8, 7, 4]
len = a.length
l = 0
r = len - 1
num = 5
count = 0

def swap(a, ai, b)
  temp = a[ai]
  a[ai] = a[b]
  a[b] = temp
end

while(l < r)
  if(a[l] <= num && a[r] > num)
    swap(a, l , r)
    count = count + 1
    l = l+1
    r = r-1
  end

  if(a[l] <= num && a[r] < num)
    r = r-1
  end

  if(a[l] > num)
    l = l+1
  end
  puts a.inspect

end

puts count


