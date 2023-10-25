return function(s: string): string
	return (string.gsub(s, "%p", {
		["<"] = "&lt;",
		[">"] = "&gt;",
		["&"] = "&amp;",
	}))
end
