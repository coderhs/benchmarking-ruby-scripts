require 'benchmark'
require 'benchmark/ips'


Benchmark.ips do |r|
  N = 100000

  r.report('collect') do
    a = [1, 2, 3, 4, 5]
    N.times do
      b = a.collect { |x| x*x }
    end
  end

  r.report('map') do
    a = [1, 2, 3, 4, 5]
    N.times do
      b = a.map { |x| x*x }
    end
  end
  r.compare!
end
