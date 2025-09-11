func selectionSort(_ array: [Int]) -> [Int] {
    var result = array
    
    for i in 0..<result.count {
        var minIndex = i
        
        //Find the smallest element in the unsorted portion
        for j in i+1..<result.count {
            if result[j] < result[minIndex] {
                minIndex = j
            }
        }
        
        //swap the smallest value into position
        if i != minIndex {
            result.swapAt(i, minIndex)
        }
    }
    
    return result
}

//Example Usage
var numbers = [19, 2, 70, 55, 67, 42]
var sorted = selectionSort(numbers)
print("\(numbers) -> \(sorted)")