import Dependencies
import Foundation
import Logging

extension DependencyValues {
	/// For writing interpolated string messages to the unified logging system.
	public var logger: Logger {
		get { self[Logger.self] }
		set { self[Logger.self] = newValue }
	}
}

// MARK: - Logger + DependencyKey

extension Logger: DependencyKey {
	public static let liveValue = Logger(label: "\(Bundle.main.bundleIdentifier!).logger")

	public static var testValue = Logger(label: "noop", factory: { _ in SwiftLogNoOpLogHandler() })
}

extension Logger {
	public func error(_ error: some Error) {
		self.error("Error: \(error.localizedDescription)")
	}
}
