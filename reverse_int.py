"""
Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
"""


MIN_INT = -2**31
MAX_INT = (2**31)-1
class Solution:
    def reverse(self, x: int) -> int:
        """ Reverse an integer """
        ans = 0
        if (x >= MAX_INT) or (x <= MIN_INT):
            return ans
        else:
            if x < 0:
                ans = (-1) * int(str(x).strip('-')[::-1])
            else:
                ans = int(str(x)[::-1])
            return ans

        
