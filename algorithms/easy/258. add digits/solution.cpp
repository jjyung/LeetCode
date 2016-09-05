class Solution {
public:
    int addDigits(int num) {
        int ans = 0;
        if(num) {
            ans = num % 9;
            if(ans==0)
                ans = 9;
        }
        return ans;
    }
};