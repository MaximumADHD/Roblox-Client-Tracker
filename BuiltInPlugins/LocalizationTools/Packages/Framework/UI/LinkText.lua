--[[
	A basic hyperlink with a callback on click.
	Size is based on the text extents.

	Required Props:
		callback OnClick: A callback for when the user clicks this link.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		string Text: The text to display in this link.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		number ZIndex: The render index of this component.
		number LayoutOrder: The layout order of this component in a list.

	Style Values:
		Enum.Font Font: The font used to render the text in this link.
		number TextSize: The font size of the text in this link.
		Color3 TextColor: The color of the text and underline in this link.
]]
local FFlagAssetManagerLuaCleanup1 = settings():GetFFlag("AssetManagerLuaCleanup1")
local FFlagTruncateDevFrameworkHyperlinkText = game:GetFastFlag("TruncateDevFrameworkHyperlinkText")
local FFlagWrappedDevFrameworkLinkText = game:GetFastFlag("WrappedDevFrameworkLinkText")

local TextService = game:GetService("TextService")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local HoverArea = require(Framework.UI.HoverArea)
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier
local Typecheck = Util.Typecheck

local Button = require(Framework.UI.Button)

local LinkText = Roact.PureComponent:extend("LinkText")
Typecheck.wrap(LinkText, script)

function LinkText:init(props)
	assert(type(props.OnClick) == "function", "LinkText expects an 'OnClick' function.")

	if FFlagWrappedDevFrameworkLinkText then
		assert(props.Size or (not props.TextWrapped), "Size prop is required to use the TextWrapped prop")
	end

	if FFlagTruncateDevFrameworkHyperlinkText and props.TextTruncate then
		assert(props.Size ~= nil and typeof(props.Size) == "UDim2", "LinkText expects a UDim2 'Size' if the 'TextTruncate' prop passed in.")
	end

	self.state = {
		StyleModifier = nil,
		AbsoluteWidth = FFlagWrappedDevFrameworkLinkText and 0 or nil,
	}

	self.mouseEnter = function()
		self:setState({
			StyleModifier = StyleModifier.Hover,
		})
	end

	self.mouseLeave = function()
		self:setState({
			StyleModifier = Roact.None,
		})
	end
end

function LinkText:render()
	local props = self.props
	local state = self.state
	local theme = props.Theme
	local styleModifier = state.StyleModifier
	local style = theme:getStyle("Framework", self)

	local size = props.Size

	local font = style.Font
	local textSize = style.TextSize
	local textColor = style.TextColor
	local text = props.Text or ""
	local textTruncate = FFlagTruncateDevFrameworkHyperlinkText and props.TextTruncate or nil
	local textWrapped = FFlagWrappedDevFrameworkLinkText and props.TextWrapped or nil
	local textXAlignment = FFlagWrappedDevFrameworkLinkText and props.TextXAlignment or nil
	local textYAlignment = FFlagWrappedDevFrameworkLinkText and props.TextYAlignment or nil

	local isMultiline = false
	local textDimensions
	if FFlagTruncateDevFrameworkHyperlinkText and textTruncate then
		textDimensions = size
	else
		if font then
			if FFlagWrappedDevFrameworkLinkText and textWrapped then
				local textDimensionsExtents = TextService:GetTextSize(text, textSize, font,
					Vector2.new(state.AbsoluteWidth, math.huge))
				textDimensions = UDim2.new(size.X, UDim.new(0, textDimensionsExtents.Y))
				isMultiline = textDimensionsExtents.Y ~= TextService:GetTextSize("", textSize, font, Vector2.new())
			else
				local textExtents = TextService:GetTextSize(text, textSize, font, Vector2.new())
				textDimensions = UDim2.fromOffset(textExtents.X, textExtents.Y)
			end
		else
			textDimensions = UDim2.new()
		end
	end

	local onClick = props.OnClick
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	local hovered = styleModifier == StyleModifier.Hover

	local enableHover = true
	local showUnderline = true
	if FFlagAssetManagerLuaCleanup1 then
		enableHover = (style.EnableHover == nil) and true or style.EnableHover
		showUnderline = (style.ShowUnderline == nil) and true or style.ShowUnderline
	end

	return Roact.createElement(Button, {
		Style = {
			Font = font,
			TextSize = textSize,
			TextColor = textColor,
			TextTruncate = textTruncate,
			TextWrapped = textWrapped,
			TextXAlignment = textXAlignment,
			TextYAlignment = textYAlignment,
		},
		Size = textDimensions,
		Position = position,
		AnchorPoint = anchorPoint,
		ZIndex = zIndex,
		LayoutOrder = layoutOrder,
		Text = text,
		OnClick = onClick,
	}, {
		Layout = FFlagWrappedDevFrameworkLinkText and Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self:setState({
					AbsoluteWidth = rbx.AbsoluteContentSize.X,
				})
			end,
		}),

		HoverArea = enableHover and Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
			MouseEnter = self.mouseEnter,
			MouseLeave = self.mouseLeave,
		}),

		Underline = showUnderline and hovered and (not isMultiline) and Roact.createElement("Frame", {
			LayoutOrder = FFlagWrappedDevFrameworkLinkText and 1 or nil,
			Size = UDim2.new(1, 0, 0, 1),
			Position = (not FFlagWrappedDevFrameworkLinkText) and UDim2.new(0, 0, 1, 0) or nil,
			AnchorPoint = (not FFlagWrappedDevFrameworkLinkText) and Vector2.new(0, 1) or nil,
			BackgroundColor3 = textColor,
			BorderSizePixel = 0,
		}),
	})
end

ContextServices.mapToProps(LinkText, {
	Theme = ContextServices.Theme,
})

return LinkText
