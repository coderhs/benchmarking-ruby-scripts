require 'benchmark'

Benchmark.bm do |x|
  x.report do
    1000000.times do
      a = 'test'
      case a
        when 'trial'
          nil
        when 'data'
          nil
        else
          nil
        end
    end
  end
end
