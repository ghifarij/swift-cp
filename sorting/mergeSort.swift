// Merge Sort in Swift
// Returns a new sorted array

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array //base case: arrays of length 0 or 1 are already sorted
    }
    
    let middle = array.count/2
    let left = mergeSort(Array(array[0..<middle]))
    let right = mergeSort(Array(array[middle..<array.count]))
    
    return merge(left, right)
}

private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var i = 0 //left index
    var j = 0 //right index
    var result = [Int]()
    
    //merge while both sides have elements
    while i < left.count && j < right.count {
        if left[i] <= right[j] {
            result.append(left[i])
            i += 1
        } else {
            result.append(right[j])
            j += 1
        }
    }
    
    //append any leftovers
    if i < left.count {
        result.append(contentsOf: left[i..<left.count])
        //contentsOf: "take everything from this collection and dump it into the array."
    }
    if j < right.count {
        result.append(contentsOf: right[j..<right.count])
    }
    
    return result
}

let numbers = [2, 5, 7, 9, 8, 1, 4, 3, 6]
let sorted = mergeSort(numbers)
print("\(numbers) -> \(sorted)")

