# 🏃‍♂️ Two-Pointer Technique in Linked Lists

The **two-pointer technique** is a common strategy in linked list problems. It uses two references (pointers) that move through the list at different speeds or from different directions. This technique is especially useful for detecting cycles, finding the middle node, or solving other linked list problems efficiently.

---

## 🔹 Two Scenarios

1. **Two pointers starting at different positions**  
   - One starts at the beginning, another starts at the end.  
   - Example: Checking if a string/array is a palindrome.  

2. **Two pointers moving at different speeds**  
   - One moves faster, the other slower.  
   - Example: Detecting a cycle in a linked list.  

---

## 🏃 Runners Analogy

- Imagine two runners on a track:  
  - On a **straight path**, the fast runner finishes first.  
  - On a **circular track**, the fast runner will eventually **catch up** with the slow runner.  

This is the basis of the **Floyd’s Tortoise and Hare algorithm** for cycle detection.  

---

## 🔹 Linked List Cycle Detection

1. **No cycle** → Fast pointer will stop when it reaches the end (`null`).  
2. **Cycle exists** → Fast pointer eventually meets the slow pointer.  

---

## ⚠️ Tips & Pitfalls

1. **Check for `null` before accessing `next`.**  
   - Example: before `fast = fast.next.next`, ensure `fast != null` and `fast.next != null`.  
   - Prevents null-pointer errors.  

2. **Carefully define loop conditions.**  
   - Wrong conditions may lead to infinite loops.  
   - Test with multiple cases (with and without cycles).  

---

## 📊 Complexity Analysis

- **Space Complexity:** O(1)  
  - Only two pointers are used, no extra memory.  

- **Time Complexity:** O(N)  
  - If no cycle → Fast pointer takes ~N/2 steps to reach the end.  
  - If cycle exists → Fast pointer meets slow pointer in at most N steps (where N is the length of the list).  

Thus, in both cases, the runtime is **O(N)**.  

---

## 📌 Key Insight

- Two pointers moving at **different speeds** is a powerful pattern.  
- Useful for:
  - Detecting cycles  
  - Finding middle of linked list  
  - Solving "fast vs slow traversal" problems efficiently  

