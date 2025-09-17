# 🔢 Sorting Algorithms

This section contains summaries and Swift implementations of basic sorting algorithms.

---

## 📘 Bubble Sort

Move higher valued elements generally towards the right, lower valued elements generally towards the left.  
Set swap counter to a non-zero value. Reset until the swap counter is 0.

- **Worst case:** array in reversed order **O(n²)**
- **Best case:** array is already sorted **O(n)**

---

## 📘 Selection Sort

Find the smallest unsorted list and add it to the end of sorted list. Repeat until no unsorted element remain.  
“Select” the smallest and put it at the start each pass.

- **Worst case:** iterate over each of the n elements of the array and repeat this process n times **Ω(n²)**
- **Best case:** same **O(n²)**

---

## 📘 Merge Sort

The idea of the algorithm is to sort the smallest array and then combine those arrays together (merge them) in sorted order.  
Leverages recursion.

**Pseudocode:**

- Sort the left half of the array (assuming n > 1)
- Sort the right half of the array (assuming n > 1)
- Merge the two halves together

- **Worst case:** we have to split n elements up and then recombine them, effectively doubling the sorted subarrays as we build them up.
- **Best case:** already sorted but still have to split and recombine.
- **Best & worst case:** **O(n log n)**

---

## 📂 Solutions

| Algorithm      | Swift Code File                            |
| -------------- | ------------------------------------------ |
| Bubble Sort    | [bubbleSort.swift](bubbleSort.swift)       |
| Selection Sort | [selectionSort.swift](selectionSort.swift) |
| Merge Sort     | [mergeSort.swift](mergeSort.swift)         |
| Insertion Sort | [insertionSort.swift](insertionSort.swift) |

---

## 📂 Problems

| Problem Name            | Platform   | Link                                                                 |
| ----------------------- | ---------- | -------------------------------------------------------------------- |
| Insertion Sort – Part 1 | HackerRank | [View Problem](https://www.hackerrank.com/challenges/insertionsort1/problem?isFullScreen=true) |

---
