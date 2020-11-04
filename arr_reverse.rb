# 
### Reverse of an array
#
# arr = [1,2,3,4,5,6,7,8,9]
# d = 4
# def reverse(arr, dstart, dend)
#   while dstart < dend do
#     temp = arr[dstart]
#     arr[dstart] = arr[dend];
#     arr[dend] = temp
#     dstart += 1
#     dend -= 1
#     puts "#{arr}"
#   end
# end
# reverse(arr, 0, d-1)
# reverse(arr, d, arr.length-1)
# reverse(arr, 0, arr.length-1);


arr = [0,1,2,3,4,5,6,7,8]
k = 3

x=[0,1,2], y=[3,4,5,6,7,8]

x=[0,1,2], yl=[3,4,5] yr=[6,7,8] 

x=[6,7,8], yl=[3,4,5] yr=[0,1,2]

x=[6,7,8], yl=[0,1,2], yr=[3,4,5]
