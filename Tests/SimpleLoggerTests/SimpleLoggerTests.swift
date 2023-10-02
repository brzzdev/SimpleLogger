import Dependencies
import Logging
@testable import SimpleLogger
import XCTest

final class SimpleLoggerTests: XCTestCase {
	func testLoggerTestValue() throws {
		@Dependency(\.logger)
		var logger

		XCTAssertEqual(logger.label, "noop")
	}
}
