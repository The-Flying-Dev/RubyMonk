# Problem Statement

# For 2 Colors in RGB:
# (R1, G1, B1) and (R2, G2, B2),

# Brightness index is:
# ( 299*R1 + 587*G1 + 114*B1) / 1000

# Brightness difference is:
# Absolute difference in brighness indices

# Hue difference is:
# |R1 - R2| + |G1 - G2| + |B1 - B2|
# where |x| is the absolute value of x

# If Brightness difference is more than 125 and the Hue difference is more than 500 then the colors have sufficient contrast
# Find out if the given color combos have sufficient contrast and get all the tests passing.


class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (r*299 + g*587 + b*114) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (r-another_color.r).abs +
    (g-another_color.g).abs +
    (b-another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end

