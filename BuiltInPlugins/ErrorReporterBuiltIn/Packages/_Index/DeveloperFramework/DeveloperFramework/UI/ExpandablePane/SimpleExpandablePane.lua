--[[
	An ExpandablePane that automatically manages expanded state.

	This component accepts the same props and styles as ExpandablePane, with the
	exception of the Expanded and OnExpandedChanged props which are not needed
	since the component manages expanded state.

	Optional Props:
		boolean AlwaysExpanded: Keeps the Pane in an Expanded state (will hide arrow).
		Enum.AutomaticSize AutomaticSize: Provide the ExpandablePane with an AutomaticSize.
		Color3 BackgroundColor: Override the color of the background.
		Color3 BorderColor: Override the color of the border image.
		any HeaderComponent: Extra component to render in the header.
		Enum.FillDirection Layout: An optional Enum.FillDirection adding a UIListLayout instance.
		number LayoutOrder: The layout order of this component in a list.
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
local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local ExpandablePane = require(Framework.UI.ExpandablePane)

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local SimpleExpandablePane = Roact.PureComponent:extend("SimpleExpandablePane")
Typecheck.wrap(SimpleExpandablePane, script)

function SimpleExpandablePane:init(initialProps)
	self.state = {
		expanded = initialProps.Expanded,
	}

	self.expandedChanged = function()
		self:setState(function(prevState)
			return {
				expanded = not prevState.expanded,
			}
		end)
	end
end

function SimpleExpandablePane:render()
	return Roact.createElement(ExpandablePane, join(self.props, {
		Expanded = self.state.expanded,
		OnExpandedChanged = self.expandedChanged,
	}))
end

return SimpleExpandablePane
