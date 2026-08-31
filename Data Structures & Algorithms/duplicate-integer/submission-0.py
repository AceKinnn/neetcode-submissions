# from typing import List
from collections import Counter

class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        frequency_dict = dict(Counter(nums))
        
        for count in frequency_dict.values():
            if count > 1:
                return True
        return False
    
print(Solution().hasDuplicate([1,2,2,3,4]))
