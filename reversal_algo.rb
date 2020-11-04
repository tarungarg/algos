arr = [1,2,3,4,5,6,7,8,9,10,11,12]
d=9
l = arr.length
def reversal_algo(arr, d, l)
  reverse(arr, 0, d-1)
  reverse(arr, d, l-1)
  reverse(arr, 0, l-1)
  puts arr.inspect
end

def reverse(arr, fi, li)
  temp =  arr[fi]
  (fi..li).each_with_index do |v, i|
    s = li-i
    val = arr[v]
    arr[v] = arr[s]
    arr[s] = val

    if ((li.to_f - fi.to_f)/2.to_f).ceil == i+1
     break
    end
  end


end

reversal_algo(arr, d, l)