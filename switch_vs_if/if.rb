require 'benchmark'

Benchmark.bm do |x|
  x.report do
    1000000.times do
      a = 'test'
      if a == 'trial'
        nil
      elsif a == 'data'
        nil
      else
        nil
      end
    end
  end
end
