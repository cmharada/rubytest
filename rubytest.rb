def Add(numbers)
  parsedNums = numbers.split(/[\n|,]/);
  sum = 0;
  parsedNums.each do |num|
    sum += num.to_i
  end
  sum
end

puts Add("1,2,3,4,5,6")
puts Add("1\n2,3")
puts Add("1\n,2")