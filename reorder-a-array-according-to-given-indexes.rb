a   = [50, 40, 70, 60, 90]
index = [3,  0,  4,  1,  2]
len = a.length
l = 0
r = len - 1

def swap(a, ai, b)
  temp = a[ai]
  a[ai] = a[b]
  a[b] = temp
end

while(l <= r)
  a[l] = a[index[l]]
  temp = a[l]
  a[index[l]] = temp
  l+1
end