# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# ikea = {:chair => 25, :table => 85, :mattress => 450}
# key_for_min_value(ikea)
# # => :chair

#this wont work because the logic for creating the ordered arry isnt correct (close though )
# def key_for_min_value(name_hash)
# if  name_hash == {}
#   return nil
# end
#   value_arr = []
#     name_hash.map do |key, value|
#       value_arr.push(value)
#     end
#     i = 0
#      myArr = [0]
#
#     while i < value_arr.length
#       if value_arr[i] > myArr.last
#       myArr.push(value_arr[i])
#       else
#         myArr.unshift(value_arr[i])
#       end
#       i += 1
#     end
#     x = myArr.first
#
#     name_hash.each do |key, value|
#       if value == x
#         return key
#       end
#     end
# end



def key_for_min_value(hash)
  low_key = nil
  low_value = nil
  hash.each do |key, value|
    if low_value == nil || value < low_value
      low_value = value
      low_key = key
    end
  end
  low_key
end
