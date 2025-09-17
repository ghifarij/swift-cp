//
//  reverseLinkedList.swift
//
//
//  Created by Afga Ghifari on 16/09/25.
//


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        //Create prev starting as nil
        var prev: ListNode? = nil
        
        //Create curr starting at head
        var curr = head
        
        while curr != nil {
            let nextTemp = curr?.next   // 1) remember the rest
            curr?.next = prev           // 2) flip the arrow
            prev = curr                 // 3) advance prev
            curr = nextTemp             // 4) advance curr
        }
        
        return prev // new head
    }
}

/*
 Time O(n)
 Space O(1)
 */
