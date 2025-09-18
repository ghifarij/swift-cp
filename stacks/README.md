# 📚 Stack (Data Structure)

A **Stack** is a special data structure used to maintain data in an organized way.  
It follows the rule: **Last In, First Out (LIFO)**.  

- Add (Push) → always to the **top** of the stack.  
- Remove (Pop) → always removes the **last added item**.  

Stacks are commonly implemented using:  
- **Array**  
- **Linked List**  

---

## 🔹 Array-based Stack Implementation

```swift
struct ArrayStack<T> {
    private var elements: [T] = []
    
    // Push: add element to the top
    mutating func push(_ value: T) {
        elements.append(value)
    }
    
    // Pop: remove last element
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    // Peek: check top element without removing
    func peek() -> T? {
        return elements.last
    }
    
    // Check if stack is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }
}
```

**Explanation of Push (Array):**  
- When we call `push(_:)`, the element is simply appended to the **end of the array**, which represents the **top** of the stack.  
- Array automatically manages memory, so you don’t need pointers here.  

**Explanation of Pop (Array):**  
- When we call `pop()`, it removes the **last element** from the array.  
- Technically, the memory location still exists until the array reallocates, but Swift automatically manages this with **ARC (Automatic Reference Counting)**.  
- After popping, you cannot access that element through the stack anymore. If you push again, the new element takes the “top” position — it does not *reuse* the exact same memory slot, but replaces the logical position in the array.  

---

## 🔹 Linked List–based Stack Implementation

```swift
class Node<T> {
    var value: T
    var next: Node?

    init(_ value: T) {
        self.value = value
        self.next = nil
    }
}

class LinkedListStack<T> {
    private var top: Node<T>?

    // Push: add new node at the top
    func push(_ value: T) {
        let newNode = Node(value)
        newNode.next = top   // point new node to the old top
        top = newNode        // update top pointer
    }

    // Pop: remove the node at the top
    func pop() -> T? {
        guard let node = top else { return nil }
        top = node.next      // move top pointer to next node
        return node.value
    }

    // Peek: check top value
    func peek() -> T? {
        return top?.value
    }

    var isEmpty: Bool {
        return top == nil
    }
}
```

**Explanation of Push (Linked List):**  
- We create a new node with the value.  
- The new node’s `next` pointer is set to the current `top`.  
- We move the `top` pointer to the new node.  
- Now the new node becomes the new top of the stack.  

This is why **pointers matter** in linked list stacks: we must correctly update the `top` pointer so the stack order is preserved.  

**Explanation of Pop (Linked List):**  
- We take the node at `top`.  
- Move the `top` pointer to `top.next`.  
- Return the value of the removed node.  

⚠️ **Important memory note:**  
- After popping, the node still exists in memory **until no references remain**.  
- In Swift, when the `top` pointer no longer points to it, and if no other variable references that node, ARC automatically frees it.  
- So, while the data may still exist in memory for a very short time, it is **not logically part of the stack anymore**.  
- A new `push` does **not overwrite** the same memory — it simply creates a new node and moves the `top` pointer.  

---

## 📌 Key Takeaways
- **Stack = LIFO.**  
- Two legal operations: **Push** and **Pop**.  
- Array stack is simple but resizing can be expensive.  
- Linked list stack uses pointers, efficient for dynamic sizes.  
- After a `pop`, the value is inaccessible through the stack. Memory management is handled by Swift’s ARC, not manual overwrite.  

---

## 📂 Solutions

| Algorithm            | Swift Code File                                    |
| -------------------- | -------------------------------------------------- |
| Valid Parenthesis  | [validParenthesis.swift](validParenthesis.swift) |

---

## 📂 Problems

| Problem Name         | Platform | Link                                                                 |
| -------------------- | -------- | -------------------------------------------------------------------- |
| Valid Parenthesis  | LeetCode | [View Problem](https://leetcode.com/problems/valid-parentheses/description/) |
