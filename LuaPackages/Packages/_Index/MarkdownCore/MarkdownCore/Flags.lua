local Packages = script:FindFirstAncestor("MarkdownCore").Parent

local SafeFlags = require(Packages.SafeFlags)

return {
	FFlagMarkdownAssistantParity = SafeFlags.createGetFFlag("MarkdownAssistantParity")(),
	FFlagMarkdownTables = SafeFlags.createGetFFlag("MarkdownTables")(),
	FFlagMarkdownTagFallbacks = SafeFlags.createGetFFlag("MarkdownTagFallbacks")(),
}
