# Fix: `distribute_prize` Function for PrizeDistribution Contract

## Problem Description
The `distribute_prize` function was missing, and the contract lacked proper authorization checks and logic for prize distribution. Additionally, the testing setup was incomplete, causing test failures.

## Solution
This PR introduces the following:
1. Adds a `distribute_prize` function with:
   - Authorization checks (owner-only).
   - Validation for sufficient pool balance before prize distribution.
   - Logic for sending funds to the winner.
2. Implements a `constructor` to initialize the owner and pool.

## Testing
- Add new test cases for `distribute_prize` to ensure correctness.
- Verify that unauthorized callers cannot access owner-only functions.
- Check that the pool amount is updated correctly after distribution.

---
