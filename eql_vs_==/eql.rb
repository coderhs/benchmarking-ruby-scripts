require 'benchmark'

Benchmark.bm do |x|
  x.report do
    1000000.times do
      a = 'a'
      nil if a.eql?('a')
    end
  end
end
