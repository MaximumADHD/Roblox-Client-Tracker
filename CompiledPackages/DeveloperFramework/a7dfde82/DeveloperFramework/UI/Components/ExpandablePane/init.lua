--[[
	(USES STYLESHEETS)
	A pane with a title and content area that can be expanded and collapsed.

	This component supports most Pane properties and style values, as well as
	the Box, RoundBox, and BorderBox styles.

	Required Props:
		callback OnExpandedChanged: The function that will be called when the pane is exanded or collapsed.

	Optional Props:
		boolean AlwaysExpanded: Keeps the Pane in an Expanded state (will hide arrow).
		Enum.AutomaticSize AutomaticSize: Provide the ExpandablePane with an AutomaticSize.
		Color3 BackgroundColor: Override the color of the background.
		Color3 BorderColor: Override the color of the border image.
		boolean Expanded: The expanded state of the component.
		any HeaderComponent: Extra component to render in the header.
		table HeaderComponentProps: A table of props which are passed to the HeaderComponent.
		any HeaderOverride: A component to use as the header of the pane. ExpandablePane generates a default-styled header if one is not passed in.
		Enum.FillDirection Layout: An optional Enum.FillDirection adding a UIListLayout instance.
		Enum.HorizontalAlignment HorizontalAlignment: Property on UIListLayout
		Enum.VerticalAlignment VerticalAlignment: Property on UIListLayout
		number LayoutOrder: The layout order of this component in a list.
		string ContentTag: The tag of the content
		Style Style: The style with which to render this component. (DEPRECATED: Use tags instead)
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		string Text: The title text to display in the header.
		UDim2 Size: The size of the header component
		number ContentPadding: The padding of the child content (DEPRECATED: Use ContentTag instead)
		number ContentSpacing: The spacing of the child content (DEPRECATED: Use ContentTag instead)
		boolean PutHeaderLast: If true, put the header component after the children

	Style Values:
		table Arrow: The style with which to render the header image.
		Color3 BackgroundColor: Override the color of the background.
		Color3 BorderColor: Override the color of the border image.
		table Content: The style with which to render the content pane.
		any ContentPadding: A number or table adding a padding to the content pane.
		number ContentSpacing: The spacing between child components in the content pane.
		table Header: The style with which to render the header pane.
		any Padding: A number or table adding padding to the component.
		table Title: The style with which to render the header text.
]]
local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local textStyles = require(Framework.UI.Components.TextLabel.styles)
local styles = require(script.styles)
local ARROW_SIZE = styles:GetAttribute("ArrowSize")
local SPACING = styles:GetAttribute("Spacing")

local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local prioritize = require(Framework.Util.prioritize)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)
local StyleModifier = require(Framework.Util.StyleModifier)
local Typecheck = require(Framework.Util.Typecheck)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local omit = Dash.omit

local ZERO_VECTOR = Vector2.new()

local ExpandablePane = Roact.PureComponent:extend("ExpandablePane")
Typecheck.wrap(ExpandablePane, script)

ExpandablePane.defaultProps = join({
	AlwaysExpanded = false,
	AutomaticSize = if supportsStyleSheets then nil else Enum.AutomaticSize.Y,
	Expanded = false,
	HeaderComponentProps = {},
	Layout = if supportsStyleSheets then nil else Enum.FillDirection.Vertical,
	HorizontalAlignment = if supportsStyleSheets then nil else Enum.HorizontalAlignment.Center,
	VerticalAlignment = if supportsStyleSheets then nil else Enum.VerticalAlignment.Center,
	PutHeaderLast = false,
}, if supportsStyleSheets then { [React.Tag] = "X-Pad X-ColumnM X-FitY" } else nil)

function ExpandablePane.getTagFromDeprecatedProps(props): string
	local fit
	if props.AutomaticSize == Enum.AutomaticSize.X then
		fit = "X-FitX"
	elseif props.AutomaticSize == Enum.AutomaticSize.Y then
		fit = "X-FitY"
	elseif props.AutomaticSize == Enum.AutomaticSize.XY then
		fit = "X-Fit"
	end

	local horizontalAlignment
	if props.HorizontalAlignment == Enum.HorizontalAlignment.Left then
		horizontalAlignment = "X-Left"
	elseif props.HorizontalAlignment == Enum.HorizontalAlignment.Center then
		horizontalAlignment = "X-Center"
	elseif props.HorizontalAlignment == Enum.HorizontalAlignment.Right then
		horizontalAlignment = "X-Right"
	end

	local verticalAlignment
	if props.VerticalAlignment == Enum.VerticalAlignment.Top then
		verticalAlignment = "X-Top"
	elseif props.VerticalAlignment == Enum.VerticalAlignment.Center then
		verticalAlignment = "X-Middle"
	elseif props.VerticalAlignment == Enum.VerticalAlignment.Bottom then
		verticalAlignment = "X-Bottom"
	end

	local layout
	if props.Layout == Enum.FillDirection.Vertical then
		layout = "X-Column"
	elseif props.Layout == Enum.FillDirection.Horizontal then
		layout = "X-Row"
	end

	if layout and props.Spacing then
		-- StyleSheets: We can't map all values of spacing, so approximate as "Medium" spacing and require consumers to upgrade to tags explicitly for more control
		-- To make e.g. X-RowM or X-ColumnM
		layout = layout .. "M"
	end

	local padding
	if props.Padding then
		-- StyleSheets: We can't map all values of spacing, so approximate as "Medium" padding and require consumers to upgrade to tags explicitly for more control
		padding = "X-Pad"
	end

	return joinTags(fit, horizontalAlignment, verticalAlignment, layout, padding)
end

function ExpandablePane:render()
	local props = self.props
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	local expanded = props.AlwaysExpanded or props.Expanded

	local tags = if supportsStyleSheets then props[React.Tag] or "X-ColumnM X-FitY" else nil
	local contentTag = if supportsStyleSheets
		then joinTags(
			props[React.Tag],
			ExpandablePane.getTagFromDeprecatedProps({
				AutomaticSize = props.AutomaticSize,
				Padding = props.ContentPadding,
				Spacing = props.ContentSpacing,
				HorizontalAlignment = props.HorizontalAlignment,
				VerticalAlignment = props.VerticalAlignment,
				Layout = props.Layout,
			})
		)
		else nil

	local componentProps = join(
		props,
		if supportsStyleSheets
			then {
				[React.Tag] = joinTags("Component-ExpandablePane", tags, if expanded then "Expanded" else nil),
			}
			else {
				BackgroundColor = style.BackgroundColor,
				BorderColor = style.BorderColor,
				Layout = Enum.FillDirection.Vertical,
				Padding = style.Padding,
				Style = style,
			}
	)

	componentProps = omit(componentProps, {
		Roact.Children,
		"AlwaysExpanded",
		"ContentPadding",
		"Expanded",
		"HeaderComponent",
		"HeaderComponentProps",
		"HeaderOverride",
		"HorizontalAlignment",
		"OnExpandedChanged",
		"Text",
		"ContentSpacing",
		"PutHeaderLast",
	})

	local contentPadding = if supportsStyleSheets then nil else prioritize(props.ContentPadding, style.Content.Padding)
	local contentSpacing = if supportsStyleSheets then nil else prioritize(props.ContentSpacing, style.Content.Spacing)

	local layoutOrder = if props.PutHeaderLast then 1 else 2

	return Roact.createElement(Pane, componentProps, {
		Header = props.HeaderOverride or self:_renderHeader(),
		Content = expanded and Roact.createElement(
			Pane,
			if supportsStyleSheets
				then {
					LayoutOrder = layoutOrder,
					[React.Tag] = contentTag,
				}
				else {
					AutomaticSize = Enum.AutomaticSize.Y,
					Layout = props.Layout,
					LayoutOrder = layoutOrder,
					Padding = contentPadding,
					Spacing = contentSpacing,
					HorizontalAlignment = props.HorizontalAlignment,
					VerticalAlignment = props.VerticalAlignment,
				},
			props[Roact.Children]
		),
	})
end

function ExpandablePane:_computeHeaderComponentFitWidth()
	local props = self.props
	local style = if supportsStyleSheets then (props.Style or {}).Header or {} else props.Stylizer.Header

	local arrowSize = if supportsStyleSheets then ARROW_SIZE else style.Arrow.Size
	local spacing = if supportsStyleSheets then SPACING else style.Spacing
	local width = if supportsStyleSheets then arrowSize + spacing else arrowSize.X.Offset + spacing

	if props.Text then
		local textStyle = style.Text
		local fontStyle = if supportsStyleSheets then textStyles:GetAttribute("TextLabelFont") else textStyle.Font
		local textSizeStyle = if supportsStyleSheets
			then textStyles:GetAttribute("TextLabelTitleSize")
			else textStyle.TextSize
		local textSize = TextService:GetTextSize(props.Text, textSizeStyle, fontStyle, ZERO_VECTOR)
		width += textSize.X + spacing
	end
	return width
end

function ExpandablePane:_renderHeader()
	local props = self.props
	local style = if supportsStyleSheets then (props.Style or {}).Header or {} else props.Stylizer.Header

	local layoutOrderIterator = LayoutOrderIterator.new()

	local children = {}

	if not props.AlwaysExpanded then
		children.Image = Roact.createElement(
			Image,
			if supportsStyleSheets
				then {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					[React.Tag] = "Arrow",
				}
				else {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Style = style.Arrow,
					StyleModifier = props.Expanded and StyleModifier.Selected or nil,
				}
		)
	end

	if props.Text then
		children.Title = Roact.createElement(
			TextLabel,
			if supportsStyleSheets
				then {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Text = props.Text,
					[React.Tag] = "Title Wrap X-Fit",
				}
				else {
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Style = style.Text,
					Text = props.Text,
					TextWrapped = true,
				}
		)
	end

	if props.HeaderComponent then
		local size
		if not props.HeaderComponentProps.Size then
			local width = self:_computeHeaderComponentFitWidth()
			size = UDim2.new(1, -width, 1, 0)
		end
		local componentProps = join(props.HeaderComponentProps, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = size,
		})
		children.HeaderComponent = Roact.createElement(props.HeaderComponent, componentProps)
	end

	local headerSize

	if props.Size then
		headerSize = props.Size
	elseif not supportsStyleSheets then
		headerSize = style.Size
		local height = style.Height
		if typeof(height) == "number" then
			headerSize = UDim2.new(style.Size.X, UDim.new(0, height))
		elseif typeof(height) == "UDim" then
			headerSize = UDim2.new(style.Size.X, height)
		end
	end

	local paneStyle = if supportsStyleSheets
		then omit(style, {
			"Arrow",
			"Text",
		})
		else nil

	local layoutOrder = if props.PutHeaderLast then 2 else 1

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				LayoutOrder = layoutOrder,
				OnClick = props.OnExpandedChanged,
				[React.Tag] = "Header X-Fit X-RowM X-Middle",
			}
			else {
				HorizontalAlignment = style.HorizontalAlignment,
				LayoutOrder = layoutOrder,
				Layout = Enum.FillDirection.Horizontal,
				OnClick = props.OnExpandedChanged,
				Padding = style.Padding,
				Size = headerSize,
				Style = paneStyle,
				Spacing = style.Spacing,
				VerticalAlignment = style.VerticalAlignment,
			},
		children
	)
end

if not supportsStyleSheets then
	ExpandablePane = withContext({
		Stylizer = ContextServices.Stylizer,
	})(ExpandablePane)
end

return ExpandablePane
