// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EuclideanAlgorithm {
    uint256 public M;
    uint256 public N;
    uint256 public R;

    function solveEuclideanAlgorithm(
        uint256 _m,
        uint256 _n
    ) public returns (uint256) {
        // Step 1
        M = _m;
        N = _n;

        // Step 2
        R = M % N;

        // Step 3
        if (R != 0) {
            // Swap M and N and return to step 2 where R = M%N
            (M, N) = (N, R);
            return (solveEuclideanAlgorithm(M, N)); //recursion handler
        } else {
            // The greatest common divisor is the value currently assigned to N
            return N;
        }
    }
}
