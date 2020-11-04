
######
#  Rotate one by one
######
# arr = [1,2,3,4,5,6]
# d=2
# def rotateArr(arr, d)
# 	temp = arr[0]
# 	arr_length = arr.length
# 	(0..arr_length - 1).each do |i|
# 		arr[i] = arr[i+1]
#     end
# 	arr[arr_length-1] = temp
# 	arr
# end

# (1..d).each do |i|
#    arr = rotateArr(arr, i)
#    if (i== d) 
#        puts arr, arr.length
#     end
# end



######
#  Rotate and shift by 2
######
# arr = [1,2,3,4,5,6]
# d=2
# def rotateArr(arr, d)
# 	temp = []
# 	(0..arr.length-1).each do |i|
# 		if(i < d)
# 			temp << arr[i]
# 		else
# 			arr[i - d] = arr[i]
# 		end
# 		puts "loop arr: #{arr}"
		
# 	end
# 	d.downto(1).each do |i|
#         arr[-i] = temp[i-1]
# 	end
# 	arr
# end

# arr = rotateArr(arr, d)
# puts arr, arr.length

######
#  Rotate by GCD  Juggling Algorithm
######
# arr = [1,2,3,4,5,6]
# d=2

# def gcd(a, b)
# 	if(b == 0)
# 			return a
# 	end
# 	return gcd(a, a%b)
# end

# gcd_val = gcd(d, arr.length)

# def rotateArr
# 	(0..gcd_val).each do |i|
# 		temp = arr[i]
# 		j = i
# 		loop do
# 			k = j + d
# 			if (k >= arr.length)
# 				k = k-n
# 			end
# 			arr[j] = arr[k]
# 		end
# 	end
# end


