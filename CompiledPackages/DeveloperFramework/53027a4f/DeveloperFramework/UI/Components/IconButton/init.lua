--[[
	(USES STYLESHEETS)
	A standard Button component, customizable with left/right icon and text.
	Renders a hover state if supplied with an OnClick callback.

	Optional Props:
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		callback OnClick: Callback for when user clicks the button. Also enables hovering.
		boolean Disabled: Disables button onClick and hover; defaults to false. (DEPRECATED use Disabled tag)

		UDim2 IconSize: Size of icon in button, defaults to 16px. Icon must be square.
		Enum.ScaleType IconScaleType: The scale type enum for the icon (DO NOT USE)
		any LeftIcon: Table for image or string asset source for the image to display to the left of the text.
		any RightIcon: Table for image or string asset source for the image to display to the right of the text.
		Color3 IconColor: Color3 of icon.
		string IconTag: Optional tag for the left/right icons.

		Enum.AutomaticSize: The AutomaticSize of the button (DEPRECATED: Use X-Fit)
		Color3 BackgroundColor: Background color override. (DEPRECATED: use style tag)
		Style BackgroundStyle: Background color override; defaults to "BorderBox". (DEPRECATED: Use style tag)
		Color3 HoverColor: Hover color override. (DO NOT USE)
		Color3 BorderColor: BorderColor override. (DO NOT USE)
		number ImageTransparency: The image transparency for all the images in the component (DO NOT USE)

		Padding Padding: Creates UIPadding instance on underlying pane; defaults to 10. (DEPRECATED: Use style tag)
		UDim2 Position: The position of this component.
		number Spacing: Defines space between icons and text; defaults to 10. (DEPRECATED: Use style tag)

		string Text: The button text.
		Enum.TextXAlignment TextXAlignment: Passed to TextLabel; defaults to left. (DO NOT USE)
		Enum.TextYAlignment TextYAlignment: Passed to TextLabel; defaults to center. (DO NOT USE)
		Color3 TextColor: Passed to TextLabel; defaults to MainText (DO NOT USE)
		Color3 DisabledTextColor: Passed to TextLabled; defaults to DimmedText (DO NO USE)
		string Cursor: String of cursor type to display when hovering over the button.

		boolean OverrideTags: Whether the tags passed to this component override the component's default tags

		string TooltipText: Text to display when hovering over the button.
		Style TooltipStyle: Tooltip style override.

		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext. (DEPRECATED)
		number ZIndex: Passed to TextButton
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil

local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)
local hasTag = require(Framework.Styling.hasTag)

local Util = require(Framework.Util)
local prioritize = Util.prioritize

local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local Tooltip = require(Framework.UI.Components.Tooltip)
local HoverArea = require(Framework.UI.Components.HoverArea)
local Image = require(Framework.UI.Components.Image)

local IconButton = Roact.PureComponent:extend("IconButton")

local DEFAULT_SIZE = UDim2.fromScale(0, 0)

IconButton.defaultProps = {
	BackgroundStyle = if supportsStyleSheets then nil else "BorderBox",
	Disabled = false,
	LayoutOrder = 0,
	TextXAlignment = if supportsStyleSheets then nil else Enum.TextXAlignment.Left,
	TextYAlignment = if supportsStyleSheets then nil else Enum.TextYAlignment.Center,
}

function IconButton:init()
	self.state = {
		Hovering = false,
	}

	if not supportsStyleSheets then
		self.mouseEnter = function()
			self:setState({
				Hovering = true,
			})
		end

		self.mouseLeave = function()
			self:setState({
				Hovering = false,
			})
		end
	end
end

function IconButton:render()
	local props = self.props
	local state = self.state

	local tags = if supportsStyleSheets then props[React.Tag] else nil
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	if supportsStyleSheets and typeof(style) == "string" then
		tags = joinTags(tags, style)
		style = {}
	end

	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local rotation = props.Rotation

	local disabled = if supportsStyleSheets then hasTag(tags, "Disabled") or props.Disabled else props.Disabled
	local hovering = if supportsStyleSheets then nil else state.Hovering

	local backgroundColor = if supportsStyleSheets
		then props.BackgroundColor3 or props.BackgroundColor
		else prioritize(props.BackgroundColor, style.BackgroundColor)
	local hoverColor = if supportsStyleSheets
		then props.HoverColor
		else prioritize(props.HoverColor, style.Hover.Background)

	local background = if props.OnClick and hovering then hoverColor else backgroundColor
	background = if disabled then (if style.Disabled then style.Disabled.Background else nil) else background
	local size = if supportsStyleSheets then props.Size else prioritize(props.Size, style.Size)
	local backgroundStyle = if props.Style == "IconOnly" then nil else props.BackgroundStyle
	local enabledTextColor = if supportsStyleSheets
		then props.TextColor
		else prioritize(props.TextColor, style.TextColor)
	local disabledTextColor = if supportsStyleSheets
		then props.DisabledTextColor
		else prioritize(props.DisabledTextColor, style.Disabled.TextColor)
	local textColor = if disabled or not props.OnClick then disabledTextColor else enabledTextColor
	local iconColor = if supportsStyleSheets then props.IconColor else prioritize(props.IconColor, style.IconColor)
	local iconScaleType = if supportsStyleSheets then nil else prioritize(props.IconScaleType, style.IconScaleType)

	local borderColor = if not supportsStyleSheets
		then prioritize(props.BorderColor, style.BorderColor)
		else props.BorderColor

	local iconSize = if supportsStyleSheets then props.IconSize else prioritize(props.IconSize, style.IconSize)
	local padding = if supportsStyleSheets then props.Padding else prioritize(props.Padding, style.Padding)
	local spacing = if supportsStyleSheets then props.Spacing else prioritize(props.Spacing, style.Spacing)

	local textSize

	if not supportsStyleSheets then
		local textBoxPadding = 2 * iconSize
		textSize = UDim2.new(1, -textBoxPadding, 1, 0)

		if props.AutomaticSize == Enum.AutomaticSize.XY then
			if not props.Size then
				size = UDim2.fromScale(0, 0)
			end
			textSize = UDim2.fromScale(0, 0)
		elseif props.AutomaticSize == Enum.AutomaticSize.X then
			if not props.Size then
				size = UDim2.fromScale(0, 1)
			end
			textSize = UDim2.fromScale(0, 1)
		elseif props.AutomaticSize == Enum.AutomaticSize.Y then
			if not props.Size then
				size = UDim2.fromScale(1, 0)
			end
			textSize = UDim2.new(1, -textBoxPadding, 0, 0)
		end

		if props.Style == "Link" then
			backgroundStyle = nil
		end
	end

	local textButtonProps = {
		AnchorPoint = anchorPoint,
		AutomaticSize = props.AutomaticSize,
		-- TODO [aleksandrsl 22.05.24]: Do we need this, because in the parent it's applied to container?
		SizeConstraint = props.SizeConstraint,
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
		Position = position,
		Size = size,
		Text = "",
		Rotation = rotation,
		ZIndex = props.ZIndex,

		[Roact.Ref] = props.ForwardRef,
		[Roact.Event.Activated] = not props.Disabled and props.OnClick or nil,
		[Roact.Event.MouseButton2Click] = not props.Disabled and props.OnRightClick or nil,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}

	local isIconOnly = if supportsStyleSheets then hasTag(tags, "IconOnly") else nil
	local contentTag
	local textTag: string
	if supportsStyleSheets then
		local textButtonTags = if props.OverrideTags
			then props[React.Tag] or joinTags("Component-IconButton", tags, "X-Fit")
			else joinTags("Component-IconButton", tags, "X-Fit")
		textButtonTags = joinTags(textButtonTags, if size == DEFAULT_SIZE then "X-DefaultSize" else nil)
		textButtonProps[React.Tag] = textButtonTags
		if isIconOnly or hasTag(tags, "Link") then
			contentTag = ""
		elseif disabled then
			contentTag = "Muted"
		elseif hasTag(tags, "Primary") then
			contentTag = "Primary"
			textTag = "Contrast"
		elseif hasTag(tags, "PrimaryBrand") then
			contentTag = "PrimaryBrand"
		else
			contentTag = "Secondary"
		end
	end

	local leftIcon
	if props.LeftIcon then
		if supportsStyleSheets then
			local iconTag = props.IconTag or "Icon16"
			leftIcon = Roact.createElement(
				Image,
				if typeof(props.LeftIcon) == "table"
					then join({
						LayoutOrder = 1,
						[React.Tag] = iconTag,
					}, props.LeftIcon)
					else {
						LayoutOrder = 1,
						Image = props.LeftIcon,
						[React.Tag] = iconTag,
					}
			)
		else
			leftIcon = Roact.createElement(
				Pane,
				if typeof(props.LeftIcon) == "table"
					then join(props.LeftIcon, {
						LayoutOrder = 1,
					})
					else {
						LayoutOrder = 1,
						ScaleType = iconScaleType,
						Size = UDim2.fromOffset(iconSize, iconSize),
						Style = {
							Background = iconColor,
							Image = props.LeftIcon,
						},
					}
			)
		end
	end

	local rightIcon
	if props.RightIcon then
		if supportsStyleSheets then
			local iconTag = props.IconTag or "Icon16"
			rightIcon = Roact.createElement(
				Image,
				if typeof(props.RightIcon) == "table"
					then join({
						LayoutOrder = 1,
						[React.Tag] = iconTag,
					}, props.RightIcon)
					else {
						LayoutOrder = 3,
						Image = props.RightIcon,
						[React.Tag] = props.IconTag or "Icon16",
					}
			)
		else
			rightIcon = Roact.createElement(
				Pane,
				if typeof(props.RightIcon) == "table"
					then join(props.RightIcon, {
						LayoutOrder = 3,
					})
					else {
						LayoutOrder = 3,
						ScaleType = iconScaleType,
						Size = UDim2.fromOffset(iconSize, iconSize),
						Style = {
							Background = iconColor,
							Image = props.RightIcon,
						},
					}
			)
		end
	end

	return Roact.createElement("TextButton", textButtonProps, {
		Content = Roact.createElement(
			Pane,
			if supportsStyleSheets
				then {
					AutomaticSize = props.AutomaticSize,
					BackgroundColor3 = background,
					BorderColor = borderColor,
					Size = size,
					[React.Tag] = if props.OverrideTags
						then props.PaneTags or joinTags(
							"X-Fit X-RowM",
							if isIconOnly then nil else "X-Corner",
							contentTag,
							if hasTag(tags, "Compact") then "X-PadS" else "X-Pad"
						)
						else joinTags(
							"X-Fit X-RowM",
							if isIconOnly then nil else "X-Corner",
							contentTag,
							if hasTag(tags, "Compact") then "X-PadS" else "X-Pad",
							-- Include PaneTags alongside default pane tags
							props.PaneTags
						),
				}
				else {
					AutomaticSize = props.AutomaticSize,
					BackgroundColor = background,
					BorderColor = borderColor,
					ImageTransparency = props.ImageTransparency,
					Layout = Enum.FillDirection.Horizontal,
					Padding = padding,
					Size = size,
					Spacing = spacing,
					Style = backgroundStyle,
				},
			{
				LeftIcon = leftIcon,
				Text = props.Text and Roact.createElement(
					TextLabel,
					if supportsStyleSheets
						then {
							LayoutOrder = 2,
							Text = props.Text,
							[React.Tag] = joinTags(
								"X-Fit",
								if disabled then "Disabled" else nil,
								if textTag then textTag else nil
							),
						}
						else {
							AutomaticSize = props.AutomaticSize,
							Text = props.Text,
							TextColor = textColor,
							Size = textSize,
							LayoutOrder = 2,
							TextXAlignment = props.TextXAlignment,
							TextYAlignment = props.TextYAlignment,
						}
				),
				RightIcon = rightIcon,
			}
		),
		Tooltip = props.TooltipText and Roact.createElement(Tooltip, {
			Style = props.TooltipStyle,
			Text = props.TooltipText,
		}),
		HoverArea = if props.Cursor
			then Roact.createElement(HoverArea, {
				Cursor = props.Cursor,
			})
			else nil,
	})
end

IconButton = withContext({
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(IconButton)

return withForwardRef(IconButton)
