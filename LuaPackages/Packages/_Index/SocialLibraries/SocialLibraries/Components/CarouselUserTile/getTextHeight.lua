local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Text = dependencies.Text
local StyleTypes = require(script.Parent.StyleTypes)

return function(text: string, fontType: StyleTypes.FontType, fontSize: number): number
	return Text.GetTextHeight(text, fontType, fontSize)
end
