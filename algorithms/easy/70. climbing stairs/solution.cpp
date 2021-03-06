class Solution {
public:
    int climbStairs(int n) {
        int ways[n+1];
        ways[0] = 0;
        ways[1] = 1;
        ways[2] = 2;
        if(n > 2)
            for(int i = 3;i <= n;i++) {
                ways[i] = ways[i-1] + ways[i-2];
            }
        return ways[n];
    }
};
