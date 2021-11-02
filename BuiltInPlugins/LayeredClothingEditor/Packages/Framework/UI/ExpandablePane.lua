--[[
	A pane with a title and content area that can be expanded and collapsed.

	This component supports most Pane properties and style values, as well as
	the Box, RoundBox, and BorderBox styles.

	Required Props:
		callback OnExpandedChanged: The function that will be called when the pane is exanded or collapsed.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Provide the ExpandablePane with an AutomaticSize.
		Color3 BackgroundColor: Override the color of the background.
		Color3 BorderColor: Override the color of the border image.
		boolean Expanded: The expanded state of the component.
		any HeaderComponent: Extra component to render in the header.
		table HeaderComponentProps: A table of props which are passed to the HeaderComponent.
		Enum.FillDirection Layout: An optional Enum.FillDirection adding a UIListLayout instance.
		number LayoutOrder: The layout order of this component in a list.
		Style Style: The style with which to render this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps.
		string Text: The title text to display in the header.

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
local FFlagDevFrameworkRefactorExpandablePaneHeader = game:GetFastFlag("DevFrameworkRefactorExpandablePaneHeader")

local TextService = game:GetService("TextService")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Image = require(Framework.UI.Image)
local Pane = require(Framework.UI.Pane)
local TextLabel = require(Framework.UI.TextLabel)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize -- Remove with FFlagDevFrameworkRefactorExpandablePaneHeader

local Dash = require(Framework.packages.Dash)
local join = Dash.join
local omit = Dash.omit

local ZERO_VECTOR = Vector2.new()

local ExpandablePane = Roact.PureComponent:extend("ExpandablePane")
Typecheck.wrap(ExpandablePane, script)

ExpandablePane.defaultProps = {
	AutomaticSize = Enum.AutomaticSize.Y,
	Expanded = false,
	HeaderComponentProps = {},
	Layout = Enum.FillDirection.Vertical,
}

function ExpandablePane:init()
	assert(THEME_REFACTOR, "ExpandablePane not supported in Theme1, please upgrade your plugin to Theme2")

	if not FFlagDevFrameworkRefactorExpandablePaneHeader then
		self.renderHeader = function()
			local props = self.props
			local style = props.Stylizer

			local children = {
				Image = Roact.createElement(Image, {
					Style = style.Arrow,
					StyleModifier = props.Expanded and StyleModifier.Selected or nil,
				})
			}

			if props.Text then
				children.Title = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Position = UDim2.fromOffset(style.TitleOffset, 0),
					Style = style.Title,
					Text = props.Text,
					TextWrapped = true,
				})
			end

			local headerComponent = props.HeaderComponent
			if headerComponent then
				children.HeaderComponent = headerComponent
			end

			return Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				LayoutOrder = 1,
				OnClick = props.OnExpandedChanged,
			}, children)
		end
	end
end

function ExpandablePane:render()
	local props = self.props
	local style = props.Stylizer

	local componentProps = join(props, {
		BackgroundColor = style.BackgroundColor,
		BorderColor = style.BorderColor,
		Layout = Enum.FillDirection.Vertical,
		Padding = style.Padding,
		Style = style,
	})

	componentProps = omit(componentProps, {
		Roact.Children,
		"Expanded",
		"HeaderComponent",
		"HeaderComponentProps",
		"OnExpandedChanged",
		"Text",
	})

	local contentPadding
	local contentSpacing
	if FFlagDevFrameworkRefactorExpandablePaneHeader then
		contentPadding = style.Content.Padding
		contentSpacing = style.Content.Spacing
	else
		contentPadding = prioritize(props.ContentPadding, style.ContentPadding)
		contentSpacing = prioritize(props.ContentSpacing, style.ContentSpacing)
	end

	return Roact.createElement(Pane, componentProps, {
		Header = FFlagDevFrameworkRefactorExpandablePaneHeader and self:_renderHeader() or self.renderHeader(),

		Content = props.Expanded and Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = props.Layout,
			LayoutOrder = 2,
			Padding = contentPadding,
			Spacing = contentSpacing,
		}, props[Roact.Children]),
	})
end

function ExpandablePane:_computeHeaderComponentFitWidth()
	local props = self.props
	local style = props.Stylizer.Header

	local arrowSize = style.Arrow.Size
	local spacing = style.Spacing
	local width = arrowSize.X.Offset + spacing

	if props.Text then
		local textStyle = style.Text
		local textSize = TextService:GetTextSize(props.Text, textStyle.TextSize, textStyle.Font, ZERO_VECTOR)
		width += textSize.X + spacing
	end
	return width
end

function ExpandablePane:_renderHeader()
	local props = self.props
	local style = props.Stylizer.Header

	local layoutOrderIterator = LayoutOrderIterator.new()

	local children = {
		Image = Roact.createElement(Image, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Style = style.Arrow,
			StyleModifier = props.Expanded and StyleModifier.Selected or nil,
		})
	}

	if props.Text then
		children.Title = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Style = style.Text,
			Text = props.Text,
			TextWrapped = true,
		})
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

	local headerSize = style.Size
	local height = style.Height
	if typeof(height) == "number" then
		headerSize = UDim2.new(style.Size.X, UDim.new(0, height))
	elseif typeof(height) == "UDim" then
		headerSize = UDim2.new(style.Size.X, height)
	end

	local paneStyle = omit(style, {
		"Arrow",
		"Text",
	})
	return Roact.createElement(Pane, {
		HorizontalAlignment = style.HorizontalAlignment,
		LayoutOrder = 1,
		Layout = Enum.FillDirection.Horizontal,
		OnClick = props.OnExpandedChanged,
		Padding = style.Padding,
		Size = headerSize,
		Style = paneStyle,
		Spacing = style.Spacing,
		VerticalAlignment = style.VerticalAlignment,
	}, children)
end

ExpandablePane = withContext({
	Stylizer = ContextServices.Stylizer,
})(ExpandablePane)

return ExpandablePane
