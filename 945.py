class Solution(object):
    def minIncrementForUnique(self, nums):
        answer = 0
        nums.sort()  # Sort the input list
        
        for i in range(1, len(nums)):
            if nums[i] <= nums[i - 1]:
                answer += nums[i - 1] - nums[i] + 1
                nums[i] = nums[i - 1] + 1
                
        return answer
