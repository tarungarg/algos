# when k = 2
# arr = 1,2,3,4,5,6,7,8,9,10

# A = 1 2
# B = 3 4 5 6 7 8 9 10
# BR = 9 10
# BL = 3 4 5 6 7 8

# swap arr = 9 10 3 4 5 6 7 8        1 2

# A = 9 10
# B = 3 4 5 6 7 8
# BR = 7 8
# BL = 3 4 5 6

# swap arr = 7 8 3 4 5 6             9 10 1 2 

# A = 7 8
# B = 3 4 5 6
# BR = 5 6
# BL = 3 4

# swap arr = 5 6 3 4                 7 8 9 10 1 2

# A = 5 6
# B = 3 4

# swap arr = 3 4 5 6 7 8 9 10 1 2

# ------------------------------------------------------------------------------
# when k = 3
# arr = 1,2,3,4,5,6,7,8,9,10

# A = 1 2 3
# B = 4 5 6 7 8 9 10
# BR = 8 9 10
# BL = 4 5 6 7

# swap arr = 8 9 10 4 5 6 7        1 2 3

# A = 8 9 10
# B = 4 5 6 7
# BR = 5 6 7
# BL = 4

# swap arr = 5 6 7 4            8 9 10 1 2 3

# A = 5 6 7
# B = 4

# swap arr =  4 5 6 7 8 9 10 1 2 3


def blockswapAlgo(arr, n, k)
  arr[i]
end

def swap(arr, fi, li, n, k)
  (0..k).each do |i|
    temp = arr[fi]
    arr[fi + i] = arr[n-i]
    arr[li] = temp
  end
end

blockswapAlgo(arr, arr.length, k)

arr = [1,2,3,4,5,6,7,8,9,10]
k=2

