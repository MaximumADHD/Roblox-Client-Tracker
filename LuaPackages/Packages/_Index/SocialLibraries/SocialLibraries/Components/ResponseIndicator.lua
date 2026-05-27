local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Foundation = dependencies.Foundation
local IconSize = Foundation.Enums.IconSize

return function()
	return UIBlox.Style.withStyle(function(style)
		return Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundColor3 = style.Theme.TextEmphasis.Color,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			visibleFrame = Roact.createElement("Frame", {
				BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
				BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
				Size = UDim2.fromOffset(120, 120),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				ZIndex = 10,
			}, {
				corner = Roact.createElement("UICorner"),
				spinner = Roact.createElement(Foundation.Loading, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					size = IconSize.Large,
				}),
			}),
		})
	end)
end
