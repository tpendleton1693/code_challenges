def longest_collatz
  n = (1..1_000_000).to_a
  length = 0
  a = 0
  ary = []
  n.each do |x|
    ary << x
    while x != 1
      if x.even?
	x = x/2
	ary << x
      else
	x = 3*x+1
	ary << x
      end
      if ary.length > length
	a = ary
	length = ary.length
      end
    end
    ary = []
  end
  puts "The number from #{n.first} to #{n.last} that produces the longest collatz sequence is #{a[0]}.  Its sequence has a length of #{length}."
end

longest_collatz
