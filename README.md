# Developer Tools

## SPM Configurations

All SPM Packages are configured to check codestyling with swiftlint before commiting changes. *Even it's annoying to enforce good practices this way...*

Also there are Komondor, Danger and SwiftFormat already linked with all packages. When creating a new package please follow the existing pattern. *Should update this repo with SwiftGen to simplify package creation*

- *swift run komondor install* // Setup git hooks
- *swift run swiftformat* // run SwiftFormat
- *swift run swiftlint --autocorrect* // run SwiftLint
- *swift run danger-swift ci* // run danger in CI (for code reviews)
