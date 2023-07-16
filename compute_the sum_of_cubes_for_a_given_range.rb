# Problem Statement

# Compute the sum of cubes for a given range a through b


def sum_of_cubes(a, b)
  (a..b).reduce(0) { |sum, number| sum += number **3 }  #(a..b).inject(0) { |sum, x| sum += (x*x*x) }
end