local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local validateColorInfo = UIBlox.Style.Validator.validateColorInfo
local validateImage = UIBlox.Core.ImageSet.Validator.validateImage
local llama = dependencies.llama

local StyledImageSetLabel = Roact.PureComponent:extend("StyledImageSetLabel")
StyledImageSetLabel.defaultProps = {
	BackgroundStyle = {
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 1,
	},
	ImageStyle = {
		Color = Color3.fromRGB(255, 255, 255),
		Transparency = 0,
	},

	BorderSizePixel = 0,
	Size = UDim2.new(1, 0, 1, 0),
	Image = "",
}

StyledImageSetLabel.validateProps = t.interface({
	BackgroundStyle = t.optional(validateColorInfo),
	ImageStyle = t.optional(validateColorInfo),
	Image = t.optional(t.union(t.string, validateImage)),
})

function StyledImageSetLabel:render()
	return Roact.createElement(
		ImageSetLabel,
		llama.Dictionary.join(
			{
				BackgroundColor3 = self.props.BackgroundStyle.Color,
				BackgroundTransparency = self.props.BackgroundStyle.Transparency,
				ImageColor3 = self.props.ImageStyle.Color,
				ImageTransparency = self.props.ImageStyle.Transparency,
			},
			self.props,
			{
				BackgroundStyle = llama.None,
				ImageStyle = llama.None,
				[Roact.Children] = llama.None,
			}
		),
		self.props[Roact.Children]
	)
end

return StyledImageSetLabel
