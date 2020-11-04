a = [2, 7, 9, 5, 8, 7, 4]
len = a.length
l = 0
r = len - 1

def swap(a, ai, b)
  temp = a[ai]
  a[ai] = a[b]
  a[b] = temp
end

while(l <= r)
  if (a[r+1] < ar[r])
    swap(a, r+1, r)
    r = r + 1
  end
  
end