import XCTest
@testable import ArtGraphicGuide

final class ArtGraphicGuideTests: XCTestCase {
    
    func testValueEquals() {
        XCTAssertTrue(AGGSpacing.oneX == 8.0)
    }
}
