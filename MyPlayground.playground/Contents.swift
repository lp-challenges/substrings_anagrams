import UIKit

let str = "Hello, playground"

func countAnagrams(for string: String) -> Int {
  var substringsArray = [[Character]]()
  var counter = 0
  for index in 0..<string.count {
    let startIndex = string.index(string.startIndex, offsetBy: index)
    for j_index in index + 1...string.count {
      let endIndex = string.index(string.startIndex, offsetBy: j_index)
      let range = startIndex..<endIndex
      let substring = string[range].sorted()
      for element in substringsArray {
        if element == substring {
          counter += 1
        }
      }
      substringsArray.append(substring)
    }
  }
  return counter
}

let result = countAnagrams(for: "cdcd") //expect 5
print(result)
