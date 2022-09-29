--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local HoverArea = Framework.UI.HoverArea
local Pane = Framework.UI.Pane
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AudioRowUnderlineTextButtonContent = Roact.PureComponent:extend("AudioRowUnderlineTextButtonContentMetadata")

type _InteralAudioRowUnderlineTextButtonContentProps = {
	Stylizer: any,
}

type AudioRowUnderlineTextButtonContentProps = _InteralAudioRowUnderlineTextButtonContentProps & {
	LayoutOrder: number,
	OnClick: (() -> nil)?,
	Size: UDim2,
	Text: string,
	TextSize: number?,
	TextWrapped: boolean?,
	TextYAlignment: Enum.TextYAlignment?,
	UIPadding: any?,
}

type AudioRowUnderlineTextButtonContentState = {
	isHovered: boolean,
}

function AudioRowUnderlineTextButtonContent:init()
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({ isHovered = true })
	end

	self.onMouseLeave = function()
		self:setState({ isHovered = false })
	end
end

function AudioRowUnderlineTextButtonContent:render()
	local props: AudioRowUnderlineTextButtonContentProps = self.props
	local state: AudioRowUnderlineTextButtonContentState = self.state

	local theme = props.Stylizer.audioRow

	local layoutOrder = props.LayoutOrder
	local onClick = props.OnClick
	local text = props.Text
	local size = props.Size
	local textSize = props.TextSize or Constants.FONT_SIZE_MEDIUM
	local textYAlignment = props.TextYAlignment
	local textWrapped = props.TextWrapped
	local UIPadding = props.UIPadding
	local isHovered = state.isHovered

	return Roact.createElement(
		Pane,
		{
			LayoutOrder = layoutOrder,
			Size = size,
		},
		Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.XY,
			Font = Constants.FONT,
			TextSize = textSize,
			Text = text,
			TextColor3 = theme.textColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = textYAlignment,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = textWrapped,
			[Roact.Event.Activated] = onClick,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
		}, {
			UIPadding = UIPadding,
			Underline = onClick and isHovered and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 1),
				BackgroundColor3 = theme.textColor,
				BorderSizePixel = 0,
			}),
			HoverArea = onClick and Roact.createElement(HoverArea, {
				Cursor = "PointingHand",
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
	)
end

AudioRowUnderlineTextButtonContent = withContext({
	Stylizer = ContextServices.Stylizer,
})(AudioRowUnderlineTextButtonContent)

return AudioRowUnderlineTextButtonContent
