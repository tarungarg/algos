arr = [1,2,3,4,5,6,7,8]
sum=12
n=arr.length

def getPair(arr, sum)
    fi=0
    li=7
    count=0
    while (fi<li) do
        puts "#{fi} #{li} => #{arr[fi]} #{arr[li]} =>  #{arr[fi] + arr[li]}"

        if ((arr[fi] + arr[li]) == sum)
            fi += 1
            count += 1
        end

        if ((arr[fi] + arr[li]) < sum)
            fi += 1
        end

        if ((arr[fi] + arr[li]) > sum)
            li -= 1
        end
    end
    return count
end

puts getPair(arr, sum)
