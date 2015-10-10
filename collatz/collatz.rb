def longest_collatz
  # Set up the variables
  n = (1..1_000_000).to_a
  length = 0
  a = 0
  ary = []

  n.each do |x|
    ary << x

    while x > 1

      if x.even?
	x = x/2
	ary << x
      else
	x = 3*x+1
	ary << x
      end

      # Store the leader!
      if ary.length > length
	a = ary[0]
	length = ary.length
      end

    end

    # Reset array before starting again
    ary = []

  end

  # Present the information in a readable way
  puts "The number from #{n.first} to #{n.last} that produces the longest collatz sequence is #{a}.  Its sequence has a length of #{length}."

end

# Getting time to benchmark the method
time = Time.now

# Run the method
longest_collatz

# Print out time difference after finishing
time2 = Time.now - time
puts time2
