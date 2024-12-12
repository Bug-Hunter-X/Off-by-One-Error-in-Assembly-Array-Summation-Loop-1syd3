# Off-by-One Error in Assembly Array Summation Loop

This repository demonstrates a subtle off-by-one error in an assembly program designed to sum the elements of a word array. The bug is in the loop termination condition, causing it to prematurely exit.  This example highlights the importance of careful loop counter management in low-level programming.

## Bug Description
The provided assembly code attempts to calculate the sum of elements in a word array. However, an error in the loop termination condition results in incorrect summation in certain scenarios.  The loop condition `jle loop_end` does not correctly handle the final element in some cases.

## Bug Solution
The corrected code addresses the off-by-one error by adjusting the loop termination condition and associated counter updates.