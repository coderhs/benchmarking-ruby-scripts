require 'benchmark'
require 'benchmark/ips'

Benchmark.ips do |r|
  N = 100000
  a = [1, 2, 3, 4, 5]
  r.report('{}') do
    my_hash = {}
    my_hash[:t] = 1
    my_hash[:b] = 2
  end

  r.report('store') do
    my_hash = {}
    my_hash.store(:t, 1)
    my_hash.store(:b, 2)
  end

  r.report('{:a => 1}') do
    my_hash = {:t => 1, :t => 2}
  end
  r.compare!
end
