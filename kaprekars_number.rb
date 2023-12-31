# Problem Statement

# 9 is a Kaprekar number since
# 9 ^ 2 = 81 and 8 + 1 = 9

# 297 is also Kaprekar number since
# 297 ^ 2 = 88209 and 88 + 209 = 297.

# In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k.
# Find if a given number is a Kaprekar number


def kaprekar?(k)
  square = k**2
  digits = k.to_s.length
  split_digits = square.to_s.reverse.chars.each_slice(digits).map {|a| a.join.reverse.to_i }
  k == split_digits.inject(0) { |sum, x| sum + x }
end
