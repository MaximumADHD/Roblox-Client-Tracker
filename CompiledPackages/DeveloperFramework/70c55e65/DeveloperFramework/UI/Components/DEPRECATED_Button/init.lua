--[[
	(DEPRECATED)
	Please use IconButton instead (icons are optional!)

	Required Props:
		callback OnClick: A callback for when the user clicks this button.

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying Frame.
		Enum.AutomaticSize AutomaticSize: The AutomaticSize of the component.
		callback OnRightClick: A callback for when the user right clicks the button.
		string Icon: The icon to display in this button.
		string Text: The text to display in this button.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		UDim2 Size: The size of this component.
		Enum.SizeConstraint SizeConstraint: the direction(s) that the container can be resized in.
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		number ZIndex: The render index of this component.
		number LayoutOrder: The layout order of this component in a list.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		string Tooltip: Tooltip to be displayed on hover
		boolean DisableHover: A prop for disabling the hover style change.
		callback OnMouseEnter: A prop for implementing special hover behavior on enter.
		callback OnMouseLeave: A prop for implementing special hover behavior on leave.

	Style Values:
		UDim2 Size: The size of this component.
		Component Background: The background to render for this Button.
		Style BackgroundStyle: The style with which to render the background.
		Component Foreground: The foreground to render for this Button.
		Style ForegroundStyle: The style with which to render the foreground.
		number Padding: The padding value to apply to the Foreground.
		Enum.Font Font: The font used to render the text in this button.
		number TextSize: The size of the text in this button.
		Color3 TextColor: The color of the text in this button.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Cryo = require(Framework.Parent.Cryo)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Container = require(Framework.UI.Components.Container)
local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local Tooltip = require(Framework.UI.Components.Tooltip)

local Util = require(Framework.Util)
local StyleModifier = require(Framework.Util.StyleModifier)
local prioritize = Util.prioritize
local Typecheck = require(Framework.Util.Typecheck)
local withForwardRef = require(Framework.Wrappers.withForwardRef)

-- TODO: sworzalla Remove DisableHover and associated functions once interaction layers have been implemented/fixed
local Button = Roact.PureComponent:extend("Button")
Typecheck.wrap(Button, script)

function Button:init()
	self.state = {}

	self.mouseEnter = function()
		self:setState({
			MouseOver = true,
			StyleModifier = if self.props.DisableHover then Roact.None else StyleModifier.Hover,
		})

		if not self.props.DisableHover and self.props.OnMouseEnter then
			self.props.OnMouseEnter()
		end
	end

	self.mouseLeave = function()
		self:setState({
			MouseOver = false,
			StyleModifier = Roact.None,
		})

		if not self.props.DisableHover and self.props.OnMouseLeave then
			self.props.OnMouseLeave()
		end
	end

	self.enableHover = function()
		self:setState(function(state)
			return {
				StyleModifier = if state.MouseOver then StyleModifier.Hover else Roact.None,
			}
		end)
		if self.state.MouseOver == true and self.props.OnMouseEnter then
			self.props.OnMouseEnter()
		end
	end

	self.disableHover = function()
		self:setState({
			StyleModifier = Roact.None,
		})
		if self.props.OnMouseLeave then
			self.props.OnMouseLeave()
		end
	end

	self.onClick = function(inputObject)
		if self.props.StyleModifier ~= StyleModifier.Disabled then
			self.props.OnClick(inputObject)
		end
	end

	self.onRightClick = function(inputObject)
		local props = self.props
		if props.StyleModifier ~= StyleModifier.Disabled and props.OnRightClick then
			props.OnRightClick(inputObject)
		end
	end
end

function Button:didUpdate(prevProps)
	local props = self.props
	if prevProps.DisableHover ~= props.DisableHover then
		if props.DisableHover then
			self.disableHover()
		else
			self.enableHover()
		end
	end
end

function Button:render()
	local props = self.props
	local state = self.state
	local styleModifier = props.StyleModifier or state.StyleModifier
	local style = props.Stylizer

	local background = style.Background
	local backgroundStyle = style.BackgroundStyle
	local foreground = style.Foreground
	local foregroundStyle = style.ForegroundStyle
	local iconPadding = prioritize(props.IconPadding, style.IconPadding)
	local iconSize = props.IconSize or UDim2.fromScale(1, 1)
	local padding = style.Padding

	local automaticSize = props.AutomaticSize
	local forwardRef = props.ForwardRef
	local text = props.Text
	local icon = props.Icon
	local onClick = props.OnClick
	local size = prioritize(style.Size, props.Size)
	local position = props.Position
	local sizeConstraint = props.SizeConstraint
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	assert(
		typeof(onClick) == "function",
		string.format("Button requires OnClick to be of type function, not %s", typeof(onClick))
	)

	local buttonSize = UDim2.new(1, 0, 1, 0)
	if automaticSize then
		buttonSize = size
	end

	return Roact.createElement(Container, {
		AutomaticSize = automaticSize,
		Background = background,
		BackgroundStyle = backgroundStyle,
		BackgroundStyleModifier = styleModifier,
		Size = size,
		SizeConstraint = sizeConstraint,
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

		TextButton = Roact.createElement(
			"TextButton",
			{
				AutomaticSize = automaticSize,
				Size = buttonSize,
				BackgroundTransparency = 1,
				Font = style.Font,
				TextSize = style.TextSize,
				TextColor3 = style.TextColor,
				TextTruncate = style.TextTruncate,
				TextWrapped = style.TextWrapped,
				TextXAlignment = style.TextXAlignment,
				TextYAlignment = style.TextYAlignment,
				Text = if not icon then (text or "") else "",
				ZIndex = 2,

				[Roact.Event.Activated] = self.onClick,
				[Roact.Event.MouseButton2Click] = self.onRightClick,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
				[Roact.Ref] = forwardRef,
			},
			Cryo.Dictionary.join(
				props[Roact.Children] or {},
				if icon
					then {
						Container = Roact.createElement(Pane, {
							Layout = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							Size = UDim2.fromScale(1, 1),
							Spacing = 10,
						}, {
							ImageContainer = if icon
								then Roact.createElement(Pane, {
									LayoutOrder = 1,
									Padding = iconPadding,
									Size = UDim2.new(1, 0, 1, -iconPadding * 2),
								}, {
									Image = Roact.createElement(Image, {
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.fromScale(0.5, 0.5),
										Size = iconSize,
										Style = {
											Image = icon,
											Color = style.TextColor,
										},
									}, {
										Constraint = Roact.createElement("UIAspectRatioConstraint", {
											AspectRatio = 1,
											DominantAxis = Enum.DominantAxis.Height,
										}),
									}),
								})
								else nil,
							TextContainer = if text
								then Roact.createElement(Pane, {
									AutomaticSize = Enum.AutomaticSize.XY,
									LayoutOrder = 2,
								}, {
									Text = Roact.createElement("TextLabel", {
										AutomaticSize = automaticSize,
										Size = buttonSize,
										BackgroundTransparency = 1,
										Font = style.Font,
										TextSize = style.TextSize,
										TextColor3 = style.TextColor,
										TextTruncate = style.TextTruncate,
										TextWrapped = style.TextWrapped,
										TextXAlignment = style.TextXAlignment,
										TextYAlignment = style.TextYAlignment,
										Text = text,
										ZIndex = 2,
									}),
								})
								else nil,
						}),
					}
					else {}
			)
		),

		Tooltip = props.Tooltip and Roact.createElement(Tooltip, {
			Text = props.Tooltip,
		}) or nil,
	})
end

Button = withContext({
	Stylizer = ContextServices.Stylizer,
})(Button)

return withForwardRef(Button)
