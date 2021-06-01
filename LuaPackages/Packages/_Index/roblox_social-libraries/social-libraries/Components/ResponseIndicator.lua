local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

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
				spinner = Roact.createElement(UIBlox.App.Loading.LoadingSpinner, {
					anchorPoint = Vector2.new(0.5, 0.5),
					position = UDim2.fromScale(0.5, 0.5),
					size = UDim2.fromOffset(48, 48),
				}),
			}),
		})
	end)
end
