""" Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order."""

def twoSum(self, nums: List[int], target: int) -> List[int]:
          
      sol = [0,0]
      for x,y in enumerate(nums):
          for a, b in enumerate(nums):
              
              if a==x:
                  continue
              sol = [x,a]
              if y+b == target:
                  return sol
