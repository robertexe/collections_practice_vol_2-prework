def begins_with_r(tools)
  tools.all? {
    |word| word[0] == "r"
  }
end

# def contain_a(arr)
#   output_arr = [];
#   arr.each do |element|
#     word = element.split('')
#      if word.any? {
#       |letter| letter == 'a' or letter == 'A'
#     } == true
#       output_arr << word.join('')
#     end
#   end
#   return output_arr
# end

def contain_a(arr)
  output_arr = []
  arr.collect do |element|
    if element.include?("a")
      output_arr << element
    end
  end
  return output_arr
end

def first_wa(hash)
  hash.each do |key, value|
    if key.to_s.start_with?('wa')
      return key
    elsif value.to_s.start_with?('wa')
      return value
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if {
    |element| element.class != String
  }
end

def count_elements(arr)
  output = []
  i=0
  arr.each do |element|
    i+=1
    if !output.include?(element)
      output << element
      output[i] = {:count => 1}

    elsif output.include?(element)

    end
  end
  output
end
