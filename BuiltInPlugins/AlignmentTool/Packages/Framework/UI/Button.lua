--[[
	A basic button which renders a Decoration and, optionally, text on top.
	If no foreground or background are provided via Style, the button is invisible.

	Required Props:
		callback OnClick: A callback for when the user clicks this button.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		string Text: The text to display in this button.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		UDim2 Size: The size of this component.
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		number ZIndex: The render index of this component.
		number LayoutOrder: The layout order of this component in a list.

	Style Values:
		Component Background: The background to render for this Button.
		Style BackgroundStyle: The style with which to render the background.
		Component Foreground: The foreground to render for this Button.
		Style ForegroundStyle: The style with which to render the foreground.
		number Padding: The padding value to apply to the Foreground.
		Enum.Font Font: The font used to render the text in this button.
		number TextSize: The size of the text in this button.
		Color3 TextColor: The color of the text in this button.
]]
local FFlagAssetManagerLuaCleanup1 = settings():GetFFlag("AssetManagerLuaCleanup1")
local FFlagStudioFixTreeViewForSquish = settings():GetFFlag("StudioFixTreeViewForSquish")
local FFlagTruncateDevFrameworkHyperlinkText = game:GetFastFlag("TruncateDevFrameworkHyperlinkText")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Container = require(Framework.UI.Container)
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier
local Typecheck = Util.Typecheck

local Button = Roact.PureComponent:extend("Button")
Typecheck.wrap(Button, script)

function Button:init(props)
	self.state = {
		StyleModifier = nil
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

function Button:render()
	local props = self.props
	local state = self.state
	local theme = props.Theme
	local styleModifier = props.StyleModifier or state.StyleModifier

	local style = theme:getStyle("Framework", self)
	local background = style.Background
	local backgroundStyle = style.BackgroundStyle
	local foreground = style.Foreground
	local foregroundStyle = style.ForegroundStyle
	local padding = style.Padding

	local text = props.Text or ""
	local onClick = props.OnClick
	local size = props.Size
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	if FFlagAssetManagerLuaCleanup1 then
		assert(typeof(onClick) == "function", string.format("Button requires OnClick to be of type string not %s", typeof(onClick)))
	end

	return Roact.createElement(Container, {
		Background = background,
		BackgroundStyle = backgroundStyle,
		BackgroundStyleModifier = styleModifier,
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		ZIndex = zIndex,
		LayoutOrder = layoutOrder,
	}, {
		Foreground = foreground and Roact.createElement(Container, {
			Background = foreground,
			BackgroundStyle = foregroundStyle,
			BackgroundStyleModifier = styleModifier,
			Margin = padding,
			ZIndex = 1,
		}),

		TextButton = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Font = style.Font,
			TextSize = style.TextSize,
			TextColor3 = style.TextColor,
			TextTruncate = FFlagTruncateDevFrameworkHyperlinkText and style.TextTruncate or nil,
			TextXAlignment = FFlagStudioFixTreeViewForSquish and style.TextXAlignment or nil,
			TextYAlignment = FFlagStudioFixTreeViewForSquish and style.TextYAlignment or nil,
			Text = text,
			ZIndex = 2,

			[Roact.Event.Activated] = onClick,
			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
		}, props[Roact.Children]),
	})
end

ContextServices.mapToProps(Button, {
	Theme = ContextServices.Theme,
})

return Button
