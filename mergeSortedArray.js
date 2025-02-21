function merge(nums1, m, nums2, n) {
  // Set pointers for nums1, nums2, and the end of nums1
  let p1 = m - 1;          // Last valid element in nums1
  let p2 = n - 1;          // Last element in nums2
  let p = m + n - 1;       // Last position in nums1

  // Merge in reverse order
  while (p2 >= 0) {
    if (p1 >= 0 && nums1[p1] > nums2[p2]) {
      nums1[p] = nums1[p1];
      p1--;
    } else {
      nums1[p] = nums2[p2];
      p2--;
    }
    p--;
  }
}

// Example usage:
const nums1 = [1, 2, 3, 0, 0, 0];
const m = 3;
const nums2 = [2, 5, 6];
const n = 3;

merge(nums1, m, nums2, n);
console.log("sorted array nums1: ", nums1); // Output: [1, 2, 2, 3, 5, 6]