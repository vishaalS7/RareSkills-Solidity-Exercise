// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsSorted {
    /**
     * The goal of this exercise is to return true if the members of "arr" is sorted (in ascending order) or false if it's not.
     */
    function isSorted(uint256[] calldata arr) public pure returns (bool) {
        if (arr.length < 1) return true; // An empty array is considered sorted
        // Iterate through the array and compare each element with the next one
        for (uint256 i = 0; i < arr.length - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                return false; // If any element is greater than the next, it's not sorted
            }
        }
        return true; // If we finish the loop without finding any disorder, it's sorted
    }
}
