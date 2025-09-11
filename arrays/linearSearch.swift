func linearSearch<T: Equatable>(_ array: [T], for target: T) -> Int? {
    for(index, value) in array.enumerated() {
        if index == value {
            return index //return right after the value is found
        }
    }
    return nil //not found
}

/*
 enumerated to make array has index 
 example: array of [3, 5]
 will become [(0, 3), (1, 5)]
 */

let numbers = [5, 6, 3, 9, 8]
if let idx = linearSearch(numbers, target: 3) {
    print("found at index: \(idx)")
} else {
    print("not found")
}
