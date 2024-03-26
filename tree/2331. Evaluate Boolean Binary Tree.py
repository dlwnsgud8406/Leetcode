# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def evaluateTree(self, root: Optional[TreeNode]) -> bool:
        if not root:
            return None
        if root.val == 0:
            return False
        if root.val == 1:
            return True
        if root.val == 2:
            left_value = self.evaluateTree(root.left)
            right_value = self.evaluateTree(root.right)
            return left_value or right_value
        if root.val == 3:
            left_value = self.evaluateTree(root.left)
            right_value = self.evaluateTree(root.right)
            return left_value and right_value
