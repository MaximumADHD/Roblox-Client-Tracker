local StyledImageSetLabel = require(script.Parent)
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle

return function()
	return withStyle(function(style)
		return Roact.createElement(StyledImageSetLabel, {
			BackgroundStyle = style.Theme.SecondaryDefault,
			BorderSizePixel = 3,
			Image = "rbxassetid://2610133241",
			ImageColor3 = Color3.new(1, 0, 1),
			ImageStyle = style.Theme.SecondaryDefault,
			Size = UDim2.new(0, 100, 0, 100),
		})
	end)
end
