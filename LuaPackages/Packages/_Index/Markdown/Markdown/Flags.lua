local Packages = script:FindFirstAncestor("Markdown").Parent

local SafeFlags = require(Packages.SafeFlags)

return {
	-- MarkdownViewer may parse with the profile its ParserProfile prop names (Parsers.RobloxMarkdown
	-- or Parsers.CommonMark) instead of CommonMarkComplianceParser
	FFlagMarkdownUseRobloxProfileParser = SafeFlags.createGetFFlag("MarkdownUseRobloxProfileParser")(),
	-- MarkdownViewer parses with Parsers.RobloxMarkdown when ParserProfile is nil (turn on once every surface
	-- sets a profile); ParserProfile = "Legacy" keeps CommonMarkComplianceParser. Implies ParserProfile is honored.
	FFlagMarkdownDefaultRobloxProfile = SafeFlags.createGetFFlag("MarkdownDefaultRobloxProfile")(),
}
