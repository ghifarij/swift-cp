# 🔁 Recursion

Two cases that could apply:

1. **Base case** – when triggered, it terminates the recursive process.
2. **Recursive case** – where the recursion actually occurs.

---

## 📝 Notes

- In general, but not always, recursive functions replace loops in non-recursive functions.
- It is possible to have **multiple base cases** or **multiple recursive cases**.
- Every recursive function needs to **make progress toward the base case**; otherwise, it will run forever.
- Recursive solutions often look cleaner for problems like:
  - Factorial
  - Fibonacci
  - Tree traversal
  - Divide & conquer algorithms
- **Cost of recursion:** Each function call uses stack memory. Too many calls can cause **stack overflow**.
- Sometimes recursion can be replaced with iteration (loops), but sometimes recursion is the **natural fit** (e.g., tree problems).

---

## 📂 Solutions

| Problem   | Swift Code File                    |
| --------- | ---------------------------------- |
| Fibonacci | [fibonacci.swift](fibonacci.swift) |
| Factorial | [factorial.swift](factorial.swift) |

---
