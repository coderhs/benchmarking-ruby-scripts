require 'benchmark'

Benchmark.bm do |x|
  x.report do
    1000000.times do
      a = [1, 2, 3, 4, 5]
      b = a.map { |x| x*x }
    end
  end
end
