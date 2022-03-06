import UIKit

var inputArray: [Int] = [2,4,5,8,11,32]
let sumToFind: Int = 19


// Following solution has a worst case time complexity of O(n²) & runs in constant space for all cases
var isFound = false
for i in 0..<inputArray.count {
    var sum = 0
    for j in i..<inputArray.count {
        sum += inputArray[j]
        if sum == sumToFind {
            print("Sum Found")
            isFound = true
            break
        }
    }
    if isFound {
        break
    }
}
// ----------------------------------------


// Following solution has a worst case time complexity of O(n) and hence is a better solution, although it uses more space O(n)

//

var dict: [Int: Int] = [:]
var sum2 = 0
for i in 0..<inputArray.count {
    sum2 += inputArray[i]
    
    if sum2 == sumToFind {
        print("Sum Found")
        break
    }
    
    if dict[sum2 - inputArray[i]] != nil {
        print("Sum Found")
        break
    }
    
    
}
