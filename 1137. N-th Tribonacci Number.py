class Solution:
    def tribonacci(self, n: int) -> int:
        if n == 0:
            return 0
        elif n == 1 or n == 2:
            return 1
        else:
            first, second, third = 1, 1, 0
            for i in range(3, n + 1):
                answer = first + second + third
                third = second
                second = first
                first = answer
            return answer

