#1 Brute Force
class Solution(object):
    def containsDuplicate(self, nums):
      for i in range(len(nums)):
        for j in range(i+1, len(nums)):
          if nums[i] == nums[j]:
            return True
      return False

# Time Complexity O(n^2)
# Space Comlexity O(1)


#2 Sorting
class Solution(object):
    def containsDuplicate(self, nums):
      nums.sort()
      for i in range(1, len(nums)):
        if nums[i] == nums[i-1]:
          return True
      return False

# Time Complexity O(n*logn) -> Modern sorting algorithms such as Timsort, Quicksort, Mergesort have O(n*logn) time complexity.
# Space Complexity O(n) or O(1) depending to the sorting algorithm.


# HashSet : HashTable and HashFunction Combination
# When a value received, the hash function applies a mathematical operation to this value to produce a number.
# This number is converted to an array index using modular arithmetic according to the table's size.
class Solution(object):
    def containsDuplicate(self, nums):
      seen = set()
      for num in nums:
        if num in seen:
          return True
        seen.add(num)
      return False

# Time Complexity O(n)
# Space Complexity O(n)
          




      
