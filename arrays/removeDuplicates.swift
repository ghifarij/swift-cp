func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    
    //the number of unique elements of nums
    var k = 0
    
    for i in 1..<nums.count {
        if nums[i] != nums[k] {
            k += 1
            nums[k] = nums[i]
        }
    }
    
    return k + 1
}
