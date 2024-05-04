import XCTest
@testable import ArtGraphicGuide

final class ArtGraphicGuideTests: XCTestCase {
    
    func testValueEquals() {
        XCTAssertTrue(ARTSpacing.oneX == 8.0)
    }
}
