// Median of two sorted arrays
/* 
Problem Description:

Given two sorted arrays A and B of size M and N respectively, return the median of the two sorted arrays.
Round of the value to the floor integer [2.6=2, 2.2=2]

Example Input

Input 1:
A = [5, 7]
B = [6]
Input 2:
A = [1, 2]
B = [3, 4]


Example Output

Output 1:
6
Output 2:
2


Example Explanation

Example 1:
merged array = [5, 6, 7] and median is 6.
Example 2:
merged array = [1, 2, 3, 4] and median is 
(2 + 3) / 2 = 2.5 
            = floor(2.5) 
            = 2

*/
public class Solution {
    public int solve(ArrayList<Integer> A, ArrayList<Integer> B) {
        int m = A.size(), n = B.size();
        int left_half_required = (m + n + 1)/2;
        int a_l = 0, a_r = m;
        while(a_l <= a_r){
            int a_m = (a_l + a_r)/2;
            int l1 = (a_m <= 0) ? Integer.MIN_VALUE : A.get(a_m - 1);
            int l2_idx = (left_half_required - a_m) - 1;
            int l2 = (l2_idx < 0) ? Integer.MIN_VALUE : (l2_idx >= n) ? Integer.MAX_VALUE : B.get(l2_idx);
            int r1_idx = a_m;
            int r1 = (r1_idx >= m) ? Integer.MAX_VALUE : A.get(r1_idx);
            int r2_idx = l2_idx + 1;
            int r2 = (r2_idx >= n) ? Integer.MAX_VALUE : (r2_idx < 0) ? Integer.MIN_VALUE : B.get(r2_idx);
            if(l1 > r2){
                a_r = a_m - 1;
            }
            else if(l2 > r1){
                a_l = a_m + 1;
            }
            else{
                double median = -1;
                if((m + n) % 2 == 0){
                    median = (Math.max(l1, l2) + Math.min(r1, r2)) / 2.0;
                }
                else{
                    median = Math.max(l1, l2);
                }
                return (int)Math.floor(median);
            }
        }
        return -1;
    }
}

