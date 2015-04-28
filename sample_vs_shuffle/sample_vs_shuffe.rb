require 'benchmark'
require 'benchmark/ips'

Benchmark.ips do |r|
  r.report('shuffle') do
    ('a'..'z').to_a.shuffle.first(6).join
  end

  r.report('sample') do
    p = ''
    6.times { p = p << ('a'..'z').to_a.sample }
  end
  r.compare!
end
