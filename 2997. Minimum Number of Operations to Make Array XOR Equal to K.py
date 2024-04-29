class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        xor_result = 0
        for n in nums:
            xor_result = xor_result ^ n
        answer = 0
        while k or xor_result:
            if (k % 2) != (xor_result % 2):
                answer += 1
            k = k // 2
            xor_result = xor_result // 2
        return answer
