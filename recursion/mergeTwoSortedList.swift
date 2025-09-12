//
//  mergeTwoSortedList.swift
//
//
//  Created by Afga Ghifari on 12/09/25.
//

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // 1) Dummy/tail setup to simplify "first node" logic
        var dummy = ListNode()
        var tail = dummy
        
        // 2) Walk while both lists still have nodes
        var p1 = list1
        var p2 = list2
        
        while p1 != nil && p2 != nil {
            if p1!.val < p2!.val { // pick the smaller (tie: pick p1 to be stable)
                tail.next = p1  // splice p1 into the result
                p1 = p1!.next // advance p1
            } else {
                tail.next = p2  // splice p2 into the result
                p2 = p2!.next // advance p2
            }
            
            tail = tail.next! // advance tail to the newly added node
        }
        
        // 3) One list may have leftovers—attach them in one shot
        if p1 != nil {
            tail.next = p1
        } else if p2 != nil {
            tail.next = p2
        }
        
        return dummy.next
    }
}
