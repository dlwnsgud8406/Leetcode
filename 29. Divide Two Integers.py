class Solution:
    def divide(self, dividend: int, divisor: int) -> int:
        answer = dividend // divisor
        if answer < 0:
            if answer != int(dividend / divisor):
                return answer + 1
            elif answer < (-2) ** 31:
                return (-2) ** 31
            else:
                return answer
        elif answer > 0:
            if answer > 2 ** 31 -1:
                return 2 ** 31 -1
            else:
                return answer
        else:
            return 0
