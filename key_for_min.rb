# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  
    if name_hash.length == 0
        return nil
    else 
        nameWithSmallestValue = []
        name_hash.each { |name, num| nameWithSmallestValue << num}     
        min_number = nameWithSmallestValue[0]
        nameWithSmallestValue.each { |num| min_number = num if num < min_number}
        name_hash.detect { |name, num| 
            if min_number == num
                return name
            end}
    end
end