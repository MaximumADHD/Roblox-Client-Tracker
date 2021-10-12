--[[
	The toolbar for the import tree view.

	The toolbar has a button for expanding and collapsing the tree.

	Required props:
		table Expansion: The map of instances to check states.
		callback OnExpansionChange: The function that will be called when items are expanded or collapsed.
]]
local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane

local Dash = Framework.Dash
local map = Dash.map
local some = Dash.some

local TreeViewToolbar = Roact.PureComponent:extend("TreeViewToolbar")

function TreeViewToolbar:render()
	local props = self.props
	local style = props.Stylizer.TreeViewToolbar

	local localization = props.Localization

	local isExpanded = some(props.Expansion, function(value)
		return value == true
	end)

	local function expandCollapseAll()
		if props.OnExpansionChange then
			props.OnExpansionChange(map(props.Expansion, function()
				return not isExpanded
			end))
		end
	end

	local buttonTextKey = isExpanded and "Collapse" or "Expand"

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = props.LayoutOrder,
		Padding = style.Padding,
		Size = props.Size,
		Spacing = style.Spacing,
	}, {
		ExpandCollapseAll = Roact.createElement(Button, {
			Disabled = not props.Expansion or #props.Expansion == 0,
			LayoutOrder = 1,
			OnClick = expandCollapseAll,
			-- TODO: Use AutomaticSize.X once FFlagDevFrameworkAddContainerAutomaticSizing is enabled
			Size = UDim2.new(0, 70, 1, 0),
			Style = "Round",
			Text = localization:getText("TreeViewToolbar", buttonTextKey),
		}),
	})
end

TreeViewToolbar = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(TreeViewToolbar)

return TreeViewToolbar
