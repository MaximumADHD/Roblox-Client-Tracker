-- https://create.roblox.com/docs/ui/rich-text#escape-forms
local function escapeRichFormatting(input: string)
	local rv = input:gsub("[&<>\"']", {
		["&"] = "&amp;",
		["<"] = "&lt;",
		[">"] = "&gt;",
		['"'] = "&quot;",
		["'"] = "&apos;",
	})
	-- Unescape double-escaped characters
	-- Lua pattern matching isn't powerful enough to escape characters excluding already escaped ones in one pass, so just do a second pass
	rv = rv:gsub("&amp;%l+;", {
		["&amp;lt;"] = "&lt;",
		["&amp;gt;"] = "&gt;",
		["&amp;quot;"] = "&quot;",
		["&amp;apos;"] = "&apos;",
		["&amp;amp;"] = "&amp;",
	})
	return rv
end

local function unescapeRichFormatting(input: string)
	return input:gsub("&%l+;", {
		["&lt;"] = "<",
		["&gt;"] = ">",
		["&quot;"] = '"',
		["&apos;"] = "'",
		["&amp;"] = "&",
	})
end

return {
	escapeRichFormatting = escapeRichFormatting,
	unescapeRichFormatting = unescapeRichFormatting,
}
