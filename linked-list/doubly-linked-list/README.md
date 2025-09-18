# 🔗 Doubly-Linked List

A **Doubly-Linked List (DLL)** is a linear data structure where each element (node) is connected using **two pointers**. Each node contains:

1. **Value** – data stored in the node  
2. **Reference (next)** – pointer to the next node  
3. **Reference (prev)** – pointer to the previous node  

This two-way connection allows traversal in both directions and simplifies certain operations like deletion, though it requires extra memory compared to a singly-linked list.

---

## 🧱 Node Structure

Here’s the basic structure of a doubly linked list node in Swift:

```swift
class DoublyListNode {
    var val: Int
    var next: DoublyListNode?
    var prev: DoublyListNode?

    init(_ val: Int) {
        self.val = val
        self.next = nil
        self.prev = nil
    }
}
```

---

## ⚡ Key Properties

| Feature             | Singly-Linked List           | Doubly-Linked List        |
| ------------------- | ---------------------------- | ------------------------- |
| Access by index     | O(n)                         | O(n)                      |
| Insert at beginning | O(1)                         | O(1)                      |
| Delete at beginning | O(1)                         | O(1)                      |
| Insert at end       | O(n)                         | O(1) (if tail is tracked) |
| Delete at end       | O(n)                         | O(1) (if tail is tracked) |
| Memory layout       | Non-contiguous               | Non-contiguous            |
| Extra memory        | None                         | `prev` pointer per node   |

---

## 🔍 Operations

### 1. Traversal

- Forward: Follow `next` pointers starting from `head`.  
- Backward: Follow `prev` pointers starting from `tail`.  

---

### 2. Insertion

To insert a node `cur` between `prev` and `next`:  
1. Set `cur.prev = prev`  
2. Set `cur.next = next`  
3. Update `prev.next = cur`  
4. Update `next.prev = cur`  

- **Time Complexity:** O(1) (if you already have references)  

---

### 3. Deletion

To delete a node `cur`:  
1. Set `cur.prev?.next = cur.next`  
2. Set `cur.next?.prev = cur.prev`  

- **Time Complexity:** O(1) (if reference is known)  

---

## 📌 Key Insights

- **Doubly-linked lists** make insertions and deletions easier since you can access both neighbors directly.  
- More flexible than singly-linked lists but require **extra memory** for `prev`. 
- Commonly used in implementing ** Least Recently Used (LRU) caches, text editors, and navigation (forward/backward)**.  

## 🔗 References
- [Doubly-Linked Lists - CS50 Shorts](https://www.youtube.com/watch?v=FHMPswJDCvU)
- [LeetCode - Linked List Explore](https://leetcode.com/explore/learn/card/linked-list/210/doubly-linked-list/)

