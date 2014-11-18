def Add(numbers)
  if numbers.start_with?("//")
    delim = numbers.slice(2...numbers.index("\n"))
    puts delim
  else
    delim = /[\n|,]/;
  end
  negatives = [];
  parsedNums = numbers.split(delim);
  sum = 0;
  parsedNums.each do |num|
    if num.to_i < 0
      negatives.push(num)
    end
    sum += num.to_i
  end
  if negatives.empty?
    sum
  else
    raise "negatives not allowed " + negatives.join(",")
  end
end

puts Add("1,2,3,4,5,6")
puts Add("1\n2,3")
puts Add("1\n,2")
puts Add("//g\n1g5g4")
puts Add("-1,2,-3")