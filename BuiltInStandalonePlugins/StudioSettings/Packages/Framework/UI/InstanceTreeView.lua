--[[
	Displays the hierarchy of an instance.

	Required Props:
		Theme Theme: The theme supplied from mapToProps()
		UDim2 Size: The size of the component
		table Instances: The instance which this tree should display at root
		table Expansion: Which items should be expanded - Set<Item>
		table Selection: Which items should be selected - Set<Item>
		callback OnExpansionChange: Called when a node is expanded or not - (newExpansion: Set<Item>) => void
		callback OnSelectionChange: Called when a node is selected or not - (newSelection: Set<Item>) => void

	Optional Props:
		callback SortChildren: A comparator function to sort two items in the tree - SortChildren(left: Item, right: Item) => boolean
		Style Style: a style table supplied from props and theme:getStyle()

	Style Values:
		table TreeView: Style values for the underlying tree view.
		table Arrow: Styling for the expand arrow.
		number RowHeight: The height of each row.
		number IconPadding: The horizontal padding around the icon.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Typecheck = require(Framework.Util).Typecheck
local Cryo = require(Framework.Parent.Cryo)

local UI = Framework.UI
local TreeView = require(UI.TreeView)
local InstanceTreeRow = require(script.InstanceTreeRow)

local InstanceTreeView = Roact.PureComponent:extend("InstanceTreeView")
Typecheck.wrap(InstanceTreeView, script)

InstanceTreeView.defaultProps = {}

function InstanceTreeView:init()

	self.toggleRow = function(row)
		local newExpansion = Cryo.Dictionary.join(self.props.Expansion, {
			[row.item] = not self.props.Expansion[row.item]
		})
		self.props.OnExpansionChange(newExpansion)
	end

	self.selectRow = function(row)
		local newSelection = {
			[row.item] = true
		}
		self.props.OnSelectionChange(newSelection)
	end

	self.renderRow = function(row)
		local props = self.props
		local theme = props.Theme
		local style = theme:getStyle("Framework", self)
		local isSelected = props.Selection[row.item]
		local isExpanded = props.Expansion[row.item]

		return Roact.createElement(InstanceTreeRow, {
			row = row,
			style = style,
			isSelected = isSelected,
			isExpanded = isExpanded,
			onToggled = self.toggleRow,
			onSelected = self.selectRow
		})
	end

	self.getChildren = function(item)
		return item:GetChildren()
	end

	self.getItemKey = function(item)
		return item:GetDebugId()
	end
end

function InstanceTreeView:render()
	local props = self.props
	local theme = props.Theme
	local style = theme:getStyle("Framework", self)

	return Roact.createElement(TreeView, {
		RootItems = props.Instances,
		GetChildren = self.getChildren,
		GetItemKey = self.getItemKey,
		RenderRow = self.renderRow,
		Size = props.Size,
		Expansion = props.Expansion,
		Style = style.TreeView
	})
end

ContextServices.mapToProps(InstanceTreeView, {
	Theme = ContextServices.Theme,
})

return InstanceTreeView