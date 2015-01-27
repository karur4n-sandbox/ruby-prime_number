require 'benchmark'

def prime_number?(n)
  if n < 2
    return false
  elsif n == 2
    return true
  end

  (2..n-1).each do |x|
    return false if n % x == 0
  end

  return true
end

result = Benchmark.realtime do
  limit = ARGV[0].to_i

  (2..limit).each do |n|
    p n if prime_number?(n)
  end
end

puts "処理時間： #{result}s"
