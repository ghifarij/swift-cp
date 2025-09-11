func binarySearch(_ array: [Int], target: Int) -> Int? {
    var left = 0
    var right = array.count - 1
    
    while left <= right {
        let mid = (left + right) / 2 //midpoint index
        
        if array[mid] == target {
            return mid //found it
        } else if array[mid] < target {
            left = mid + 1 //search right half
        } else {
            right = mid - 1 //search left half
        }
    }
    
    return nil
}

let sortedNumber = [1, 3, 6, 8, 9, 15]

if let index = binarySearch(sortedNumber, target: 7) {
    print("found at index \(index)")
} else {
    print("Not found")
}