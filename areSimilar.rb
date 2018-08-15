# Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.

# Given two arrays a and b, check whether they are similar.

# Example

# For a = [1, 2, 3] and b = [1, 2, 3], the output should be
# areSimilar(a, b) = true.

# The arrays are equal, no need to swap any elements.

# For a = [1, 2, 3] and b = [2, 1, 3], the output should be
# areSimilar(a, b) = true.

# We can obtain b from a by swapping 2 and 1 in b.

# For a = [1, 2, 2] and b = [2, 1, 1], the output should be
# areSimilar(a, b) = false.

# Any swap of any two elements either in a or in b won't make a and b equal.

def areSimilar(a, b) a.sort == b.sort && a.each_with_index.count { |v, i| b[i] != v } < 3 end

# def areSimilar(a, b)
#     aX = a.select.with_index { |value, i| b[i] != value }.sort
#     bX = b.select.with_index { |value, i| a[i] != value }.sort
#     (aX == bX && aX.size <= 2 || a == b) ? 1 : 0
# end