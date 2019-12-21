require 'benchmark'

def recursive_fib(num)
	if num == 0
		return 0
	end
	if num == 1
		return 1 
else
	return( recursive_fib(num - 1) + recursive_fib(num - 2))
end
end

def iterative_fib(n)
	a = 0
	b = 1

	n.times do
		temp = a 
		a = b

		b = temp + b
	end

	return a 
end

35.times do |n|
	result = iterative_fib(n)
	result
end



num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
	x.report("iterative_fib")  { iterative_fib(num)  }
end