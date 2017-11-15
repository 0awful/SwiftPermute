
//
//A solution to leetcode's permutations problem
//
//You can find it at:
//https://leetcode.com/problems/permutations/description/
//
//Given a collection of distinct numbers, return all possible permutations.
//
//For example,
//[1,2,3] have the following permutations:
//[
//[1,2,3],
//[1,3,2],
//[2,1,3],
//[2,3,1],
//[3,1,2],
//[3,2,1]
//]
//


class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var arr = [[Int]]()
        
        
        if nums.count <= 1 {
            return [nums]
        }
        
        
        var i = 0
        while i < nums.count {
            var workable = nums
            let num = workable.remove(at: i)
            
            var new = permute(workable)
            var j = 0
            while j < new.count {
                new[j].append(num)
                arr.append(new[j])
                j += 1
            }
            
            i += 1
        }
        
        return arr
    }
}
