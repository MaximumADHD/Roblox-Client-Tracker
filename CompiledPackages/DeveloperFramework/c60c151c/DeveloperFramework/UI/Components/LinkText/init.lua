--[[
	A basic hyperlink with a callback on click.
	Unless provided, size is based on the text extents and wrapping.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local withAbsoluteSize = require(Framework.Wrappers.withAbsoluteSize)
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Util = Framework.Util
local StyleModifier = require(Util.StyleModifier)
local prioritize = require(Util.prioritize)

local HoverArea = require(Framework.UI.Components.HoverArea)

local LinkText = Roact.PureComponent:extend("LinkText")

export type Props = {
	AbsoluteSize: Vector2?,
	AnchorPoint: Vector2?,
	AutomaticSize: Enum.AutomaticSize?,
	LayoutOrder: number?,
	Font: Enum.Font?,
	ForceUnderline: boolean?,
	HoverAreaSize: UDim2?,
	OnClick: (any) -> any,
	Position: UDim2?,
	RichText: boolean?,
	ShowUnderline: boolean?,
	Size: UDim2?,
	Style: any?,
	Text: string?,
	TextColor: Color3?,
	TextSize: number?,
	TextTruncate: Enum.TextTruncate?,
	TextWrapped: boolean?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	WrapperProps: any?,
	ZIndex: number?,
	isHovered: boolean?,
	onHover: ((isHovered: boolean) -> ())?,
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

export type State = {
	StyleModifier: any,
}

function LinkText:init()
	self.state = {}

	self.mouseEnter = function()
		self:setState({
			StyleModifier = StyleModifier.Hover,
		})
		if self.props.onHover then
			self.props.onHover(true)
		end
	end

	self.mouseLeave = function()
		self:setState({
			StyleModifier = Roact.None,
		})
		if self.props.onHover then
			self.props.onHover(false)
		end
	end
end

function LinkText:render()
	local props = self.props
	local state = self.state
	local styleModifier = state.StyleModifier
	local style = props.Stylizer

	local size = props.Size

	local font = prioritize(props.Font, style.Font)
	local textSize = prioritize(props.TextSize, style.TextSize)
	local text = props.Text or ""
	local textColor = style.TextColor
	local textColorHovered = style.TextColorHovered
	local textTruncate = props.TextTruncate
	local textWrapped = props.TextWrapped
	local textXAlignment = props.TextXAlignment
	local textYAlignment = props.TextYAlignment

	local automaticSize
	if textWrapped then
		-- Wrapping text fills available width and grows vertically
		automaticSize = Enum.AutomaticSize.Y
	else
		-- Single line text that doesn't truncate grows horizontally and is high enough to render
		automaticSize = Enum.AutomaticSize.XY
	end

	local isMultiline = textWrapped
	local textDimensions
	if textTruncate then
		textDimensions = size
	else
		textDimensions = size or UDim2.new(if textTruncate or textWrapped then 1 else 0, 0, 0, 0)
	end

	local onClick = props.OnClick
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	local hovered = styleModifier == StyleModifier.Hover or props.isHovered

	local enableHover = if style.EnableHover == nil then true else style.EnableHover

	local showUnderline = style.ShowUnderline
	local showUnderlineFrame = if style.ForceUnderline then true else showUnderline and hovered and not isMultiline

	local currentTextColor = textColor
	if hovered then
		currentTextColor = textColorHovered or textColor
	end

	local button = Roact.createElement(
		"TextButton",
		join(
			{
				Font = font,
				TextSize = textSize,
				TextColor3 = currentTextColor,
				TextTruncate = textTruncate,
				TextWrapped = textWrapped,
				TextXAlignment = textXAlignment,
				TextYAlignment = textYAlignment,
				AutomaticSize = automaticSize,
				BackgroundTransparency = 1,
				Size = textDimensions,
				Position = if enableHover then nil else position,
				RichText = props.RichText,
				AnchorPoint = if enableHover then nil else anchorPoint,
				ZIndex = zIndex,
				LayoutOrder = layoutOrder,
				Text = text,
				[Roact.Event.Activated] = onClick,
			},
			props.WrapperProps,
			{
				[Roact.Ref] = props.ForwardRef or props.WrapperProps[Roact.Ref],
			}
		)
	)
	if enableHover then
		return Roact.createElement(HoverArea, {
			AnchorPoint = anchorPoint,
			AutomaticSize = Enum.AutomaticSize.XY,
			Cursor = "PointingHand",
			LayoutOrder = layoutOrder,
			MouseEnter = self.mouseEnter,
			MouseLeave = self.mouseLeave,
			Size = props.HoverAreaSize,
			Position = position,
			ZIndex = zIndex,
		}, {
			Button = button,
			Underline = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, -1),
				LayoutOrder = 1,
				Size = if textWrapped then UDim2.new(1, 0, 0, 1) else UDim2.new(0, props.AbsoluteSize.X, 0, 1),
				BackgroundColor3 = currentTextColor,
				BorderSizePixel = 0,
				BackgroundTransparency = if showUnderlineFrame then 0 else 1,
			}),
		})
	else
		return button
	end
end

LinkText = withContext({
	Stylizer = ContextServices.Stylizer,
})(LinkText)
LinkText = withAbsoluteSize(LinkText)
LinkText = withForwardRef(LinkText)

return LinkText
