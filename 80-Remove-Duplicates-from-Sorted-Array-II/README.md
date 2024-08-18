Solution given by GPT was the same in terms of time complexity (O(n)), but it was better than mine in terms of space complexity, given that mine would require temporary arrays.

As better explained by GPT:

**In your solutions, the extra space is called and used in the following ways:**

1. **Slicing**: When you slice the array, Ruby allocates memory for a new array that contains the sliced elements. This allocation is temporary but counts as extra space since it uses memory beyond the original array nums.

- Example: nums[0..i] creates a new array in memory, taking up space proportional to the number of elements in the slice (O(n) in the worst case).


2. **Concatenation**: When you concatenate arrays, a new array is created that contains all elements from the arrays being concatenated. This also consumes extra space because Ruby must allocate memory for the new array before assigning it back to nums.

- Example: nums = nums[0..i] + nums[j..k] creates a new array that contains all elements from both slices. Even though you are assigning it back to nums, the temporary new array requires memory until the assignment is done.


**Space Complexity in Your Proposed Solutions**

In both Solution 1 and Solution 2, you are reconstructing nums by slicing and concatenating. Each time you slice, a new array is created, and each time you concatenate, yet another new array is created. This means that extra space proportional to the size of the array is being used during the slicing and concatenation process. This makes your space complexity O(n), where n is the size of the array.
