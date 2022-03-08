import UIKit

let greeting = "Hello, playground"
var dict: [Character: Int] = [:]

// Dictionary can be used as a data structure to store key value pairs as shown below.


for char in greeting {
    let count = dict[char] ?? 0
    dict[char] = count + 1
}
print(dict)

// ---------------------------------------

// Same code can be used for arrays as well as shown below
// Also note that you can use if let statement for unrapping the optional value
print("\n")
let array: [Int] = [2,4,2,5,4,7,5,5]
var dict2: [Int: Int] = [:]
for num in array {
    if let count = dict2[num] {
        dict2[num] = count + 1
    }
    else {
        dict2[num] = 1
    }
}
print(dict2)
