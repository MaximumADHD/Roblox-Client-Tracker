local StyledImageSetLabel = require(script.Parent)
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact

return function()
	return Roact.createElement(StyledImageSetLabel, {
		Image = "rbxassetid://2610133241",
	})
end
