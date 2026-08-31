class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        letter_counts_1 = dict(Counter(s))
        letter_counts_2 = dict(Counter(t))
        if letter_counts_1 == letter_counts_2:
            return True
        return False
    
print(Solution().isAnagram("racecar", "carrace"))
