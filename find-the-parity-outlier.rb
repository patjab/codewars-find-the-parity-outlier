def find_outlier(integers)
  outlierIsOdd = integers[0..1].map { |num| num % 2 == 0 }.inject { |acc, isEven| acc && isEven } || integers[2] % 2 == 0
  integers.find { |num| num % 2 == (outlierIsOdd ? 1 : 0) }
end
