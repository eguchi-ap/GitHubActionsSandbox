import Danger
import Foundation

let danger = Danger()

// swiftlint
SwiftLint.lint(inline: true, configFile: ".swiftlint.yml")

if !danger.swiftLintViolations.isEmpty {
    fail("SwiftLint violations found")
}