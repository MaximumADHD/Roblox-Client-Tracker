--!nonstrict
local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent
local CoreRoot = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)
local Images = require(AppRoot.ImageSet.Images)
local ImageSetComponent = require(CoreRoot.ImageSet.ImageSetComponent)

local MARGIN = 24
local X_IMAGE = "icons/navigation/close"
local X_BUTTON_SIZE = 36

local AlertTitle = Roact.PureComponent:extend("AlertTitle")

AlertTitle.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	margin = t.optional(t.table),
	maxWidth = t.optional(t.number),
	minWidth = t.optional(t.number),
	screenSize = t.Vector2,
	title = t.string,
	titlePadding = t.optional(t.number),
	titleContent = t.optional(t.callback),
	onCloseClicked = t.optional(t.callback),
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
	titlePadding = 12,
}

function AlertTitle:render()
	local totalWidth = math.clamp(
		self.props.screenSize.X - self.props.margin.left - self.props.margin.right,
		self.props.minWidth,
		self.props.maxWidth
	)
	local innerWidth = totalWidth - self.props.margin.left - self.props.margin.right

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local headerToken = stylePalette.Tokens.Semantic.Typography.Header
		local headerSize = headerToken.FontSize

		return Roact.createElement(FitFrameOnAxis, {
			BackgroundTransparency = 1,
			contentPadding = UDim.new(0, 8),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			LayoutOrder = self.props.layoutOrder,
			margin = {
				top = 12,
				bottom = 0,
				left = 0,
				right = 0,
			},
			minimumSize = UDim2.new(1, 0, 0, 0),
		}, {
			TitleContent = self.props.titleContent and Roact.createElement(FitFrameOnAxis, {
				BackgroundTransparency = 1,
				LayoutOrder = 0,
				minimumSize = UDim2.new(1, 0, 0, 0),
			}, {
				Content = self.props.titleContent(),
			}),
			TitleArea = Roact.createElement(FitFrameOnAxis, {
				BackgroundTransparency = 1,
				contentPadding = UDim.new(0, 12),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				LayoutOrder = 1,
				minimumSize = UDim2.new(1, 0, 0, 0),
			}, {
				Title = if self.props.onCloseClicked
					then Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 0, headerSize),
					}, {
						CloseButton = Roact.createElement(ImageSetComponent.Button, {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, X_BUTTON_SIZE, 0, X_BUTTON_SIZE),
							Image = Images[X_IMAGE],
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, 0, 0.5, 0),
							[Roact.Event.Activated] = self.props.onCloseClicked,
						}),
						TitleText = Roact.createElement(GenericTextLabel, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							colorStyle = theme.TextEmphasis,
							fontStyle = headerToken,
							Size = UDim2.new(1, -(2 * (X_BUTTON_SIZE + self.props.titlePadding)), 0, headerSize * 2),
							LayoutOrder = 1,
							Text = self.props.title,
							TextSize = headerSize,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}),
					})
					else Roact.createElement(GenericTextLabel, {
						colorStyle = theme.TextEmphasis,
						fontStyle = headerToken,
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
