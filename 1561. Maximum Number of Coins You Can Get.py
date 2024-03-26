from collections import deque
class Solution(object):
    def maxCoins(self, piles):
        answer = 0
        piles = deque(sorted(piles))
        
        while len(piles) > 0:
            piles.pop()
            answer += piles.pop()
            piles.popleft()       
        return answer 