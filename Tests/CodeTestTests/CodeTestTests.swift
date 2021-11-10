import XCTest
@testable import CodeTest

final class ExcercisesTests: XCTestCase {
    func testCountOfItemsWithRepeatedChar() throws {
        // given
        let a = ["a", "b", "c"]
        let b = ["a", "b", "cc"]
        let c = ["abc", "deef", "hi", "mnmn"]
        
        // when
        let aCount = a.numberOfItemsWithRepeatedChar
        let bCount = b.numberOfItemsWithRepeatedChar
        let cCount = c.numberOfItemsWithRepeatedChar
        
        // then
        XCTAssertEqual(aCount, 0)
        XCTAssertEqual(bCount, 1)
        XCTAssertEqual(cCount, 2)
    }
    
    func testFlattenOfIntArray() throws {
        // given
        let a: [Any] = [[1, 2, [3]], 4]
        
        // when
        let f = a.flatten()
        
        // then
        XCTAssertEqual(f, [1, 2, 3, 4])
    }
}
