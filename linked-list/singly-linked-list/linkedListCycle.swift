//
//  linkedListCycle.swift
//
//
//  Created by Afga Ghifari on 17/09/25.
//


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        // Start slow 1 step ahead and fast 2 steps ahead.
        var slow = head?.next          // moves 1 node per iteration
        var fast = head?.next?.next    // moves 2 nodes per iteration
        
        // Keep going as long as `fast` can advance two steps.
        // If there's no cycle, `fast` (or `fast?.next`) will hit nil and we stop.
        while fast != nil && fast?.next != nil {
            // If slow and fast point to the SAME node object, we've looped — cycle exists.
            // NOTE: use `===` (identity) to compare node references, not values.
            if slow === fast {
                return true
            }
            
            // Advance pointers: slow by 1, fast by 2.
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        // If we exit the loop, `fast` reached the end — no cycle.
        return false
    }
}

