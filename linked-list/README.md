# 🔗 Linked List (Singly Linked List)

A **Linked List** is a linear data structure where elements (called nodes) are connected using **pointers**. Each node contains:  
1. **Value** – data stored in the node  
2. **Reference (next)** – pointer to the next node  

Unlike arrays, linked lists do not store elements in contiguous memory, allowing **efficient insertions and deletions** without shifting elements.

---

## 🧱 Node Structure

Here’s the basic structure of a singly linked list node:

```swift
class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
```

---

## ⚡ Key Properties

| Feature               | Linked List                | Array                  |
|----------------------|---------------------------|-----------------------|
| Access by index      | O(n)                     | O(1)                  |
| Insert at beginning  | O(1)                     | O(n)                  |
| Delete at beginning  | O(1)                     | O(n)                  |
| Insert in middle     | O(1) (with reference)    | O(n)                  |
| Memory layout        | Non-contiguous           | Contiguous            |

---

## 🔍 Operations

### 1. Traversal
To access a node at index `i`, start from `head` and follow the `next` pointers until you reach it.  
- **Time Complexity:** O(n)

---

### 2. Insertion
To insert a node `cur` after a given node `prev`:  
1. Initialize `cur` with value.  
2. Point `cur.next` to `prev.next`.  
3. Point `prev.next` to `cur`.  
- **Time Complexity:** O(1) (if you have a reference to `prev`)

---

### 3. Add at Head
1. Initialize `cur` node.  
2. Point `cur.next` to `head`.  
3. Update `head = cur`.  
- **Time Complexity:** O(1)

---

### 4. Deletion
To delete node `cur`:  
1. Find `prev` (previous node).  
2. Point `prev.next` to `cur.next`.  
3. The node is removed from the chain.  
- **Time Complexity:** O(n) (to find `prev`)  
- **Space Complexity:** O(1)

---

### 5. Delete First Node
Simply move `head` to `head.next`.

---

## 🖼️ Visual Examples

### Insertion:
![Insert Node](https://leetcode.com/static/images/linkedlist/insert_node.png)

### Deletion:
![Delete Node](https://leetcode.com/static/images/linkedlist/delete_node.png)

---

## 📌 Key Insights

- Linked lists trade off **fast random access** for **efficient insertion/deletion**.  
- Best for **dynamic data** where frequent changes are needed.  
- Commonly used in stacks, queues, adjacency lists, and memory management.  
- Must manage pointers carefully to avoid memory leaks or broken chains.
