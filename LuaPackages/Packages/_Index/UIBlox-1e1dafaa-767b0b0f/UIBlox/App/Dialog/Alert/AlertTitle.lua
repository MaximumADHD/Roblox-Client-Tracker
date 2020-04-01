local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local withStyle = require(UIBlox.Core.Style.withStyle)

local MARGIN = 24

local AlertTitle = Roact.PureComponent:extend("AlertTitle")

local validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	margin = t.optional(t.table),
	maxWidth = t.optional(t.number),
	minWidth = t.optional(t.number),
	screenSize = t.Vector2,
	title = t.string,
	titleIcon = t.optional(t.union(t.table, t.string)),
	titleIconSize = t.optional(t.number),
	titlePadding = t.optional(t.number),
	titlePaddingWithIcon = t.optional(t.number),
})

AlertTitle.defaultProps = {
	margin = {
		top = 0,
		bottom = MARGIN,
		left = MARGIN,
		right = MARGIN,
	},
	maxWidth = 400,
	minWidth = 272,
	titleIconSize = 48,
	titlePadding = 12,
	titlePaddingWithIcon = 24,
}

function AlertTitle:render()
	assert(validateProps(self.props))

	local totalWidth = math.clamp(self.props.screenSize.X - self.props.margin.left - self.props.margin.right,
		self.props.minWidth, self.props.maxWidth)
	local innerWidth = totalWidth - self.props.margin.left - self.props.margin.right

	local titleTopMargin
	if self.props.titleIcon then
		titleTopMargin = self.props.titlePaddingWithIcon
	else
		titleTopMargin = self.props.titlePadding
	end

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme

		local headerSize = font.BaseSize * font.Header1.RelativeSize

		return Roact.createElement(FitFrameOnAxis, {
			BackgroundTransparency = 1,
			contentPadding = UDim.new(0, 8),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			LayoutOrder = self.props.layoutOrder,
			margin = {
				top = titleTopMargin,
				bottom = 0,
				left = 0,
				right = 0,
			},
			minimumSize = UDim2.new(1, 0, 0, 0),
		}, {
			TitleIcon = self.props.titleIcon and Roact.createElement(ImageSetComponent.Label, {
				BackgroundTransparency = 1,
				Image = self.props.titleIcon,
				ImageColor3 = theme.IconEmphasis.Color,
				ImageTransparency = theme.IconEmphasis.Transparency,
				LayoutOrder = 0,
				Size = UDim2.new(0, self.props.titleIconSize, 0, self.props.titleIconSize),
			}),
			TitleArea = Roact.createElement(FitFrameOnAxis, {
				BackgroundTransparency = 1,
				contentPadding = UDim.new(0, self.props.titlePadding),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				LayoutOrder = 1,
				minimumSize = UDim2.new(1, 0, 0, 0),
			}, {
				Title = Roact.createElement(GenericTextLabel, {
					colorStyle = theme.TextEmphasis,
					fontStyle = font.Header1,
					maxSize = Vector2.new(innerWidth, headerSize * 2),
					LayoutOrder = 1,
					Text = self.props.title,
					TextSize = headerSize,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
				Underline = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					BackgroundColor3 = theme.Divider.Color,
					BackgroundTransparency = theme.Divider.Transparency,
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, 1),
				}),
			}),
		})
	end)
end

return AlertTitle