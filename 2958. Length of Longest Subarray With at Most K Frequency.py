class Solution:
    def maxSubarrayLength(self, nums: List[int], k: int) -> int:
        n = len(nums)
        left = 0
        answer = 0
        freq = defaultdict(int)

        for right in range(n):
            freq[nums[right]] += 1
            while freq[nums[right]] > k:
                freq[nums[left]] -= 1
                left += 1
            answer = max(answer, right - left + 1)
        return answer
