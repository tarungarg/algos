a = [5,2,0,4,1,0,6,7,0,9,10]
len = a.length
r = len - 1

def swap(a, ai, b)
  temp = a[ai]
  a[ai] = a[b]
  a[b] = temp
end

l = len -1
(0..r).each do |i|
  if (i < l)
    puts " l " + l.to_s + " i " + i.to_s
    if (a[i] == 0 && a[l] != 0)
      swap(a, i, l)
      l = l - 1
    end

    if (a[l] == 0)
      l = l-1
    end
  end
end
a.inspect



