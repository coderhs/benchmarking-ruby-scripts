require 'benchmark'

Benchmark.bm do |x|
  x.report do
    i = 0
    while i < 1000000
      nil
      i += 1
    end 
  end
end
