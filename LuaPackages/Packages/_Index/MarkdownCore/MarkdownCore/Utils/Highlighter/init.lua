local Root = script:FindFirstAncestor("Utils").Parent
local Types = require(Root.Types)
local Utility = require(script.Utility)
local Theme = require(script.Theme)
local defaultTokenColors = require(script.Theme.defaultTokenColors)

local Highlighter = {
	defaultLexer = require(script.Lexer) :: Types.Lexer,
}

--[[
	Higlights the given source code.
]]
function Highlighter.highlight(src: string, colorScheme: Types.TokenColors?): string
	if colorScheme then
		Theme.setColors(colorScheme)
	else
		Theme.setColors(defaultTokenColors)
	end
	src = Utility.convertTabsToSpaces(Utility.removeControlChars(src))
	local lexer = Highlighter.defaultLexer
	local idenColor = Theme.getColor("iden")
	local output = ""
	for token: Types.TokenName, content: string in lexer.scan(src) do
		local Color = Theme.getColor(token) or idenColor
		output = output .. Theme.getColoredRichText(Color, Utility.sanitizeRichText(content))
	end
	return output
end

--[[
	Gets a token color by name.
	Mainly useful for setting "background" token color on other UI objects behind your text.
]]
function Highlighter.getTokenColor(tokenName: Types.TokenName): Color3
	return Theme.getColor(tokenName)
end

return Highlighter
