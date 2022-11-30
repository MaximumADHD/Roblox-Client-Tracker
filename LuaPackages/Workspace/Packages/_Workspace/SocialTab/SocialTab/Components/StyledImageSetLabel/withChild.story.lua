local StyledImageSetLabel = require(script.Parent)
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images

return function()
	return withStyle(function(style)
		return Roact.createElement(StyledImageSetLabel, {
			Image = Images["component_assets/circle_68_stroke_2"],
			ImageStyle = style.Theme.SecondaryDefault,
			Size = UDim2.new(0, 100, 0, 100),
		}, {
			ChildElement = Roact.createElement(StyledImageSetLabel, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = Images["icons/actions/friends/friendAdd"],
				ImageStyle = style.Theme.IconEmphasis,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0.45, 0, 0.45, 0),
			}),
		})
	end)
end
