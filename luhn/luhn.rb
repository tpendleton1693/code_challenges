module Luhn
  def self.is_valid?(number)
    number = number.to_s.split('')
    ary = []

    number.each_with_index do |n, n_index|
      n = n.to_i
      if n_index == 0 || n_index % 2 == 0
	if n + n > 9
	  n = n + n - 9
	  ary << n
	else
	  n = n + n
	  ary << n
	end
      else
	ary << n
      end
    end

    answer = ary.inject { |x, y| x + y }

    if answer % 10 == 0
      true
    else
      false
    end
  end
end

Luhn.is_valid?(4194560385008504)
