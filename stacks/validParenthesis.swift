//
//  validParenthesis.swift
//  
//
//  Created by Afga Ghifari on 18/09/25.
//

class Solution {
    func isValid(_ s: String) -> Bool {
        var arr = [Character]()
        
        let pairs : [Character : Character] = [
            ")" : "(",
            "]" : "[",
            "}" : "{"
        ]
        
        for char in s {
            if pairs[char] == nil {
                arr.append(char)
            } else if arr.isEmpty || arr.removeLast() != pairs[char]! {
                return false
            }
        }
        
        return arr.isEmpty
    }
}
