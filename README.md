
#### Since swift 4 Strings are Collections. It is possible to use subscripts, iterate over the characters, filter, etc.

## start index & end index
`startIndex` is the index of the first character <br>
`endIndex` is the index after the last character
```
str = "Hello Playground"
str[str.startIndex] // H
str[str.endIndex]   // error: after last character
```
## range
```
let range = str.startIndex..<str.endIndex
str[range]  // Hello Playground
```
## after
`after` refers to the index of the character directly after the given index. <br>
```
let index = str.index(after: str.startIndex)
str[index]  // "e"

let range = str.index(after: str.startIndex)..<str.endIndex
str[range]  // "ello, playground"
```
## before
`before` refers to the index of the character directly before the given index. <br>
```
let index = str.index(before: str.endIndex)
str[index]  // d

let range = str.startIndex..<str.index(before: str.endIndex)
str[range]  // Hello, playgroun
```
## offsetBy
The `offsetBy` value can be positive or negative and starts from the given index. Although it is of the type String.IndexDistance, you can give it an Int.
```
let index = str.index(str.startIndex, offsetBy: 7)
str[index]  // p

let start = str.index(str.startIndex, offsetBy: 7)
let end = str.index(str.endIndex, offsetBy: -6)
let range = start..<end
str[range]  // play
```
## limitedBy
The `limitedBy` is useful for making sure that the offset does not cause the index to go out of bounds. It is a bounding index. Since it is possible for the offset to exceed the limit, this method returns an Optional. It returns nil if the index is out of bounds.
```
if let index = str.index(str.startIndex, offsetBy: 7, limitedBy: str.endIndex) {
    str[index]  // p
}
```
