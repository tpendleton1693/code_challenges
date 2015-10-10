def recursive_fib(n)
  if n < 1
    0
  elsif n == 1
    1
  elsif n == 2 
    n = 1
  else
    n = (recursive_fib(n-1)) + (recursive_fib(n-2))
  end
end

def iterative_fib(n)
  if n < 1
    0
  elsif n == 1
    1
  elsif n == 2
    1
  else
    f = 0
    f1 = 1
    f2 = 1
    (n-2).times do
      f = f1 + f2
      f2 = f1
      f1 = f
    end
    f
  end
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
