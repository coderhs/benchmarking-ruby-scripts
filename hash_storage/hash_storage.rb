require 'benchmark'

Benchmark.bm do |x|
  x.report do
    1000000.times do
      my_hash = {}
      my_hash[:t] = 1
      my_hash[:b] = 2
    end
  end
  x.report do
    1000000.times do
      my_hash = {}
      my_hash.store(:t, 1)
      my_hash.store(:b, 2)
    end
  end
  x.report do
    1000000.times do
      my_hash = {:t => 1, :t => 2}
    end
  end
end
