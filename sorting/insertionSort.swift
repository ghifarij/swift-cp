/*
 * Complete the 'insertionSort1' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY arr
 */

func insertionSort1(n: Int, arr: [Int]) -> Void {
    // Make a mutable copy of the input array
    var arr = arr
    
    // Store the value we need to insert into the sorted part of the array
    var lastVal = arr[n - 1]
    
    // Track whether we've already inserted lastVal
    var inserted = false
    
    // Start from the second last element and move backwards (use stride)
    for i in stride(from: n - 2, through: 0, by: -1) {
        if arr[i] > lastVal {
            arr[i + 1] = arr[i]
            print(arr.map { String($0) }.joined(separator: " "))
            /* Convert each number in arr into a String (e.g., [2,4,6] → ["2","4","6"]),
             then join all the strings with spaces ("2 4 6"),
             and finally print the result without brackets.*/
        } else {
            inserted = true
            arr[i + 1] = lastVal
            print(arr.map { String($0) }.joined(separator: " "))
            break // Stop, since insertion is complete
        }
    }
    
    // Edge case: if lastVal is the smallest element,
    // it never got inserted in the loop → put it at index 0
    if inserted == false {
        arr[0] = lastVal
        print(arr.map { String($0) }.joined(separator: " "))
    }
}
