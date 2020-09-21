import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(jingweili_me_modelsTests.allTests),
    ]
}
#endif
