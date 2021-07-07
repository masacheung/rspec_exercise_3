def element_count(array)
    ans = Hash.new(0)

    array.each do |ele|
        ans[ele] += 1
    end

    ans
end

def char_replace!(string, hash)
    string.each_char.with_index do |char, i|
        if hash.has_key?(char)
            string[i] = hash[char]
        end
    end
    
    string
end

def product_inject(array)
    array.inject{|al, ele| al * ele}
end