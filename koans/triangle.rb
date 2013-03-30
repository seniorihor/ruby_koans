# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
# Solved by seniorihor
def triangle(*sides)
  raise TriangleError, "Invalid side #{sides[0]}" if sides.include?(0)
  raise TriangleError, "Impossible triangle" if sides.sort![0] + sides[1] <= sides[2]
  [:scalene, :isosceles, :equilateral][ sides.size - sides.uniq.size ]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
