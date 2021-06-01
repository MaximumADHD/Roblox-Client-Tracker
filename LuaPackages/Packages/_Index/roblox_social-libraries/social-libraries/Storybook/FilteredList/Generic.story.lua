local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local FilteredScrollingList = require(SocialLibraries.Components.FilteredScrollingList)

return Roact.createElement("Frame", {
	BackgroundTransparency = 0,
	Size = UDim2.new(0, 512 * (9/16), 0, 512),
}, {
	Roact.createElement(FilteredScrollingList, {
		searchIconImage = "rbxasset://textures/ui/LuaChat/icons/ic-search.png"
	})
})
