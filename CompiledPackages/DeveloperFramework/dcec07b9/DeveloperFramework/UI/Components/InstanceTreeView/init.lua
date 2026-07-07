--[[
	Displays the hierarchy of an instance.

	Required Props:
		UDim2 Size: The size of the component
		table Instances: The instance which this tree should display at root
		table Expansion: Which items should be expanded - Set<Item>
		table Selection: Which items should be selected - Set<Item>
		callback OnExpansionChange: Called when a node is expanded or not - (changedExpansion: Set<Item>) => void
		callback OnSelectionChange: Called when a node is selected or not - (newSelection: Set<Item>) => void

	Optional Props:
		callback GetItemId: An optional callback called to obtain a unique ID for the row item - GetItemId(item: Item) => any
		callback SortChildren: A comparator function to sort two items in the tree - SortChildren(left: Item, right: Item) => boolean
		Style Style: a style table supplied from props and theme:getStyle()
		number LayoutOrder: LayoutOrder of the component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

	Style Values:
		table TreeView: Style values for the underlying tree view.
		table Arrow: Styling for the expand arrow.
		number RowHeight: The height of each row.
		number IconPadding: The horizontal padding around the icon.
]]
local FFlagDevFrameworkInstanceTreeViewUseId = game:DefineFastFlag("DevFrameworkInstanceTreeViewUseId", false)

local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Typecheck = require(Framework.Util.Typecheck)

local UI = Framework.UI
local TreeView = require(UI.Components.TreeView)
local InstanceTreeRow = require(script.InstanceTreeRow)

local InstanceTreeView = Roact.PureComponent:extend("InstanceTreeView")
Typecheck.wrap(InstanceTreeView, script)

InstanceTreeView.defaultProps = {}

function InstanceTreeView:init()
	if FFlagDevFrameworkInstanceTreeViewUseId then
		self.getItemId = function(item)
			if self.props.GetItemId then
				return self.props.GetItemId(item)
			else
				return item
			end
		end
	end

	self.toggleRow = function(row)
		local itemId = if FFlagDevFrameworkInstanceTreeViewUseId then self.getItemId(row.item) else row.item
		local newExpansion = {
			[itemId] = not self.props.Expansion[itemId],
		}
		self.props.OnExpansionChange(newExpansion)
	end

	self.selectRow = function(row)
		local itemId = if FFlagDevFrameworkInstanceTreeViewUseId then self.getItemId(row.item) else row.item
		local newSelection = {
			[itemId] = true,
		}
		self.props.OnSelectionChange(newSelection)
	end
	self.getRowProps = function(row, index: number, position: UDim2, size: UDim2)
		local item = row.item
		local itemId = if FFlagDevFrameworkInstanceTreeViewUseId then self.getItemId(row.item) else row.item
		local props = self.props
		local style = props.Stylizer
		local isSelected = props.Selection[itemId]
		local isExpanded = props.Expansion[itemId]
		return {
			row = row,
			style = style,
			isSelected = isSelected,
			isExpanded = isExpanded,
			Key = item.Name .. "#" .. tostring(index),
			onToggled = self.toggleRow,
			onSelected = self.selectRow,
			Position = position,
			Size = size,
		}
	end

	self.getChildren = function(item)
		return item:GetChildren()
	end

	self.getItemKey = function(item, index)
		return item.Name .. "#" .. tostring(index)
	end
end

function InstanceTreeView:render()
	local props = self.props
	local style = props.Stylizer

	return Roact.createElement(TreeView, {
		LayoutOrder = props.LayoutOrder,
		RootItems = props.Instances,
		GetChildren = self.getChildren,
		GetItemId = if FFlagDevFrameworkInstanceTreeViewUseId then props.GetItemId else nil,
		GetItemKey = self.getItemKey,
		GetRowProps = self.getRowProps,
		RowComponent = InstanceTreeRow,
		Size = props.Size,
		Expansion = props.Expansion,
		Style = style,
	})
end

InstanceTreeView = withContext({
	Stylizer = ContextServices.Stylizer,
})(InstanceTreeView)

return InstanceTreeView
