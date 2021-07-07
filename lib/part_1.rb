def is_prime?(num)
    if num < 2
        return false
    end

    (2...num).each do |n|
        if num % n == 0
            return false
        end
    end
    true
end

def nth_prime(n)
    arr = []
    i = 0;
    while arr.length != n
        if is_prime?(i)
            arr << i
        end
        i+=1
    end

    arr[n-1]
end

def prime_range(num_1, num_2)
    if num_2 < 1
        return []
    end

    arr = []
    min = num_1
    max = num_2
    while min <= num_2
        if is_prime?(min)
            arr << min
        end

        min += 1
    end
    
    arr

end