module Luhn
  def self.digits(n, base=10)
    q, r = n.divmod(base)
    (q > 0 ? digits(q) : []) + [r]
  end
  
  def self.is_valid?(number)
    number = digits(number)

    sum = number.map.with_index do |n, n_index|
      if n_index == 0 || n_index % 2 == 0
	if n + n > 9
	  n + n - 9
	else
	  n + n
	end
      else
	n
      end
    end.inject(:+)

    return sum % 10 == 0
  end
end

