import UIKit

func countAnagrams(for string: String) -> Int {
  var substrings = [[Character]]()
  var retval = 0
  for sIdx in 0..<string.count {
    let startIdx = string.index(string.startIndex, offsetBy: sIdx)
    for eIdx in sIdx + 1...string.count {
        let endIdx = string.index(string.startIndex, offsetBy: eIdx)
        let range = startIdx..<endIdx
        let substring = string[range].sorted()
        for substring1 in substrings {
          if substring1 == substring {
              retval += 1
          }
        }
        substrings.append(substring)
      }
  }

  return retval
}
