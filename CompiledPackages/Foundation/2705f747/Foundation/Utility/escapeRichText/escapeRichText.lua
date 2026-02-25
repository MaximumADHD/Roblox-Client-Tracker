--[[
	Escapes special characters in text for safe use in rich text contexts.
	This function replaces HTML special characters with their corresponding entity codes.
]]
local function escapeRichText(text: string): string
	return text:gsub("[&<>\"']", {
		["&"] = "&amp;",
		["<"] = "&lt;",
		[">"] = "&gt;",
		['"'] = "&quot;",
		["'"] = "&apos;",
	})
end

return escapeRichText
