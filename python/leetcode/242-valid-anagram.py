#1 Sorting

class Solution(object):
    def isAnagram(self, s, t):
      
      if len(s) != len(t):
        return False
      
      return sorted(s) == sorted(t)

# Time Complexity O(n*logn + m*logm) -> Modern sorting algorithms have O(nlogn) time complexity, and there are two strings to be sorted.
# Space Complexity O(1) or O(m+n) depending on the sorting algorithm.

#2 HashMap

class Solution(object):
    def isAnagram(self, s, t):
      if len(s) != len(t):
        return False

      count_of_s, count_of_t = {}, {}
      
      for i in range(len(s)):
        count_of_s[s[i]] = 1 + count_of_s.get(s[i], 0)
        count_of_t[t[i]] = 1 + count_of_t.get(t[i], 0)

      return count_of_s == count_of_t

# Time Complexity O(n+m) / n = length of s , m = length of t
# Space Complexity O(1) since we have at most 26 different characters.

class Solution(object):
    def isAnagram(self, s, t):
      if len(s) != len(t):
        return False

      count = [0] * 26

      for i in range(len(s)):
        count[ord(s[i]) - ord('a')] += 1
        count[ord(t[i]) - ord('a')] -= 1

      for val in count:
        if val != 0:
          return False
      return True

# Time Complexity O(n+m) / n = length of s , m = length of t
# Space Complexity O(1) since we have at most 26 different characters.









