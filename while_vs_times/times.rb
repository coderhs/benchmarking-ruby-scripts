require 'benchmark'

Benchmark.bm do |x|
  x.report do
    1000000.times do
      nil
    end
  end
end
