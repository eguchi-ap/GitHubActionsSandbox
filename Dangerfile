# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# Don't let testing shortcuts get into master by accident
fail("fdescribe left in tests") if `grep -r fdescribe specs/ `.length > 1
fail("fit left in tests") if `grep -r fit specs/ `.length > 1

# 修正範囲外をチェック対象から外します。
github.dismiss_out_of_range_messages

require 'psych'
Psych.safe_load(File.read('Dangerfile'), aliases: true)

# Swiftlint
swiftlint.config_file = '.swiftlint.yml'
swiftlint.lint_files inline_mode: true
swiftlint.lint_files fail_on_error: true
