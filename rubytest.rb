def Add(numbers)
  parsedNums = numbers.split(",");
  sum = 0;
  parsedNums.each do |num|
    sum += num.to_i
  end
  sum
end