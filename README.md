# CodeTest

This package implements two extensions of the Swift Array collection.

The first is a computed var called `numberOfItemsWithRepeatedChar` that, called on an array of string, returns the number of items where at least a char is repeated.

For example:

```swift
["a", "b", "c"].numberOfItemsWithRepeatedChar -> 0
["a", "b", "cc"].numberOfItemsWithRepeatedChar -> 1
["abc", "deef", "hi", "mnmn"].numberOfItemsWithRepeatedChar -> 2
```

The second is a function that will flatten an array of arbitrarily nested arrays of integers into a flat array of integers.

For example:

```swift
[[1, 2, [3]], 4].flatten() -> [1, 2, 3, 4]
``` 




