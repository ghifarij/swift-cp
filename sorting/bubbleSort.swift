/*
 How this version works:
 Start with swapped = true so the loop runs at least once.
 Each time through the loop, assume swapped = false.
 If any swap happens, set swapped = true.
 If no swaps happened in a whole pass → array is sorted → loop stops.
 */

func bubbleSort(_ array: [Int]) -> [Int] {
    //create empty array and swap condition set to true
    var result = array
    var swapped = true
    
    //set the initial condition as false
    while swapped {
        swapped = false
        
        //loop through array until it reaches the number of items inside result
        for i in 0..<result.count - 1 {
            if result[i] > result[i + 1] {
                //built in function
                result.swapAt(i, i + 1)
                swapped = true
            }
        }
    }
    
    return result
}

//Example Usage
let numbersToSort = [78, 55, 90, 25, 75, 12]
let sorted = bubbleSort(numbersToSort)
print("\(numbersToSort) sorted using bubble sort to \(sorted)")
