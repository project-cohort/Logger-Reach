import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Logger_ReachTests.allTests),
    ]
}
#endif
