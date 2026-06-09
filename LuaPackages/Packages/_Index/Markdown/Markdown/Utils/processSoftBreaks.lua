--[[
	Replaces soft breaks with spaces and trims extra space symbols around them.
	Spacing symbols inside the string are preserved.
]]
local function processSoftBreaks(text: string): string
	return (text:gsub("%s*[\r\n]%s*", " "))
end
return processSoftBreaks
