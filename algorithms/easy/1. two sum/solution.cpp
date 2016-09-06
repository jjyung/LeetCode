class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        vector<int> ans;
        map<int, int> mapping;
        map<int, int>::iterator it;
        for(int i = 0; i < nums.size(); ++i) {
            int complement = target - nums[i];
            it = mapping.find(complement);
            int complement_index = it->second;
            
            if(it != mapping.end()) {
                if(i < it->second) {
                    ans.push_back(i);
                    ans.push_back(it->second);
                } else {
                    ans.push_back(it->second);
                    ans.push_back(i);
                }
                return ans;
            }
            mapping[nums[i]] = i;
        }
        
        return ans;
    }
};