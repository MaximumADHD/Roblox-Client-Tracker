local StyledImageSetLabel = require(script.Parent)
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local llama = dependencies.llama
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images

return function(props)
	return withStyle(function(style)
		return Roact.createElement(
			StyledImageSetLabel,
			llama.Dictionary.join({
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundStyle = style.Theme.SecondaryDefault,
				Image = Images["icons/actions/friends/friendAdd"],
				ImageStyle = style.Theme.IconEmphasis,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, 100, 0, 100),
			}, props or {})
		)
	end)
end
