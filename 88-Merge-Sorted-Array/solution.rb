# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.

def merge(nums1, m, nums2, n)
  nums1.slice!(m, nums1.length)

  nums1.each_with_index do |nums1_value, index|
    return nil if nums2.empty? || index == n + m

    nums2_value = nums2.min
    if nums1_value >= nums2_value
      nums1.insert(index, nums2_value)
      nums2.shift
    end
  end

  nums1.concat(nums2) unless nums2.empty?

  nil
end

## Example 1
nums1 = [1, 2, 3, 0, 0, 0]
m = 3
nums2 = [2, 5, 6]
n = 3

## Example 2
nums1 = [1]
m = 1
nums2 = []
n = 0

## Example 3
nums1 = [0]
m = 0
nums2 = [1]
n = 1

## Example hard
nums1 = [2, 2, 3, 4, 7, 11]
m = nums1.length
nums2 = [1, 2, 2, 5, 6, 8]
n = nums2.length
n.times { |_i| nums1 << 0 }

## Example 4
nums1 = [-1, 0, 0, 3, 3, 3, 0, 0, 0]
m = 6
nums2 = [1, 2, 2]
n = 3

## Example 5
nums1 = [-1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0]
m = 5
nums2 = [-1, -1, 0, 0, 1, 2]
n = 6

p nums1
p nums2

merge(nums1, m, nums2, n)

p nums1
