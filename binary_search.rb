arr = [1,2,3,4,5,6,7,8, 9]

def bs(arr, number)
  puts arr.inspect
  if (arr.length == 1 && arr[0] == number)
    return true
  end
  if (arr.length == 1 && arr[0] != number)
    return false
  end

  len = (arr.length/2).floor()
  if (arr[len] <= number)
    return bs(arr[len..(arr.length - 1)], number)
  end
  
  if (arr[len] > number)
    return bs(arr[0..(len-1)], number)
  end
end


if (bs(arr, 17))
  puts "seracher"
else
  puts "no"
end
