require 'benchmark'
require 'benchmark/ips'


Benchmark.ips do |r|
  a = [1, 2, 3, 4, 5]
  r.report('collect') do
    a.collect { |x| x*x }
  end

  r.report('map') do
    a.map { |x| x*x }
  end
  r.compare!
end
