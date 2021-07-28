--[[
	A pane with a title and content area that can be expanded and collapsed.

	This component supports most Pane properties and style values, as well as
	the Box, RoundBox, and BorderBox styles.

	Required Props:
		callback OnExpandedChanged: The function that will be called when the pane is exanded or collapsed.

	Optional Props:
		Color3 BackgroundColor: Override the color of the background.
		Color3 BorderColor: Override the color of the border image.
		boolean Expanded: The expanded state of the component.
		Component HeaderComponent: Extra component to render in the header.
		Style Style: The style with which to render this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps.
		string Text: The title text to display in the header.

	Style Values:
		table Arrow: The style with which to render the header image.
		Color3 BackgroundColor: Override the color of the background.
		Color3 BorderColor: Override the color of the border image.
		any ContentPadding: A number or table adding a padding to the content pane.
		number ContentSpacing: The spacing between child components in the content pane.
		any Padding: A number or table adding padding to the component.
		table Title: The style with which to render the header text.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Image = require(Framework.UI.Image)
local Pane = require(Framework.UI.Pane)
local TextLabel = require(Framework.UI.TextLabel)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local StyleModifier = Util.StyleModifier
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize

local Dash = require(Framework.packages.Dash)
local join = Dash.join
local omit = Dash.omit

local ExpandablePane = Roact.PureComponent:extend("ExpandablePane")
Typecheck.wrap(ExpandablePane, script)

ExpandablePane.defaultProps = {
	AutomaticSize = Enum.AutomaticSize.Y,
	Expanded = false,
	Layout = Enum.FillDirection.Vertical,
}

function ExpandablePane:init()
	assert(THEME_REFACTOR, "ExpandablePane not supported in Theme1, please upgrade your plugin to Theme2")

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
		"ContentPadding",
		"ContentSpacing",
		"Expanded",
		"HeaderComponent",
		"OnExpandedChanged",
		"Text",
	})

	local contentPadding = prioritize(props.ContentPadding, style.ContentPadding)
	local contentSpacing = prioritize(props.ContentSpacing, style.ContentSpacing)

	return Roact.createElement(Pane, componentProps, {
		Header = self.renderHeader(),

		Content = props.Expanded and Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = props.Layout,
			LayoutOrder = 2,
			Padding = contentPadding,
			Spacing = contentSpacing,
		}, props[Roact.Children]),
	})
end

ExpandablePane = withContext({
	Stylizer = ContextServices.Stylizer,
})(ExpandablePane)

return ExpandablePane
