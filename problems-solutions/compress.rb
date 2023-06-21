# Implement a compression algorithm that will count string_arg, e.g.:
# coooooobalt => c6xobalt (or: 1xc6xo1xb1xa1xl1xt)
# stttartuuuup => s3xtart4xup (or: 1xs3xt1xa1xr1xt4xu1xp)
# Use the language/technology you feel strong in.

def compressor(string_arg)
  compressed_string = ''
  spl_string = string_arg.split('')
  count = 1

  spl_string.each_with_index do |el, i|
    if el == string_arg[i + 1]
      count += 1
      next
    end

    if count > 1 && el != string_arg[i + 1]
      compressed_string += count.to_s + 'x' + el
      count = 1
    else
      compressed_string += el
    end
  end
  compressed_string
end

def decompress(strng)
  compressed_string = ''
  split_strng = strng.split('')
  count = 1

  split_strng.each_with_index do |el, i|
    if el == split_strng[i + 1]
      count += 1
      next
    end

    if count > 1 && el != split_strng[i + 1]
      compressed_string += count.to_s + 'x' + el
      count = 1
    else
      compressed_string += el
    end
  end

  compressed_string
end

puts compressor('stttartuuuup')
puts compressor('coo')
