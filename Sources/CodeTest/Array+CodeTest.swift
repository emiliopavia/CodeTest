import Foundation

public extension Array where Element == String {
    
    /// The number of elements in the array of strings where at least a char is repeated.
    ///
    /// The implemented algorithm has a complexity of O(n\*m) (wnere n is the size of
    /// the array and m is the size of the alphabet).
    var numberOfItemsWithRepeatedChar: Int {
        var result = 0
        
        for item in self {
            var chars = Set<Character>()
            for char in item {
                if chars.contains(char) {
                    result += 1
                    break
                } else {
                    chars.insert(char)
                }
            }
        }
        
        return result
    }
}

public extension Array {
    
    /// Flatten an arbitrarily nested arrays of integers into a flat array of integers.
    ///
    /// This function is recursive and has a complexity of O(n+m) (where n is the number
    /// of items in the flat array end m is the number of nested arrays).
    func flatten() -> [Int] {
        var result = [Int]()
        
        for item in self {
            if let int = item as? Int {
                result.append(int)
            } else if let innerArray = item as? [Element] {
                result.append(contentsOf: innerArray.flatten())
            }
        }
        
        return result
    }
}
