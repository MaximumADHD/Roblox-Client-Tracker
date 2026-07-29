--[[
	(USES STYLESHEETS)
	TreeView<Item extends any> - Displays a hierarchical data set.

	Required Props:
		UDim2 Size: The size of the component
		table RootItems: The root items displayed in the tree view.
		table Expansion: Which items should be expanded - Set<Item>

		Optional Props:
		Style Style: a style table supplied from props and theme:getStyle()
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		callback RenderRow: DEPRECATED (use RowComponent instead): This should return the React element for a given row - RenderRow(node: Row) => React.Element
		any RowComponent: An optional component to be displayed for each row, passed RowProps
		callback GetRowProps: Return table of props for the RowComponent
		table Selection: Which items should be selected - Set<Item>
		callback OnExpansionChange: Called when an item is expanded or collapsed - (changedExpansion: Set<Item>) => void
		callback OnSelectionChange: Called when an item is selected - (changedSelection: Set<Item>) => void
		callback OnHoverRow: An optional callback called when a row is hovered over. (dataIndex: number) -> ()
		callback OnSelectRow: An optional callback called when a row is selected. (dataIndex: number) -> ()
		table RowProps: A table of props which are joined to the props passed to the Row component.
		callback GetChildren: This should return a list of children for a given item - GetChildren(item: Item) => Item[]
		callback SortChildren: A comparator function to sort two items in the tree - SortChildren(left: Item, right: Item) => boolean
		callback GetItemKey: Return a key for an item, unique among siblings - GetItemKey(item: Item, index: number) => string
		callback GetItemId: An optional callback called to obtain a unique ID for the item - GetItemId(item: Item) => any
		Enum.ScrollingDirection ScrollingDirection: The direction to allow scroll in default = XY
		number LayoutOrder: LayoutOrder of the component.
		number ZIndex: The render index of this component.

	Style Values:
		table ScrollingFrame: Style values for the tree view's scrolling frame.
		Component Background: The background to render for this tree view.
		Style BackgroundStyle: The style with which to render the background.
		number Padding: The amount of padding around the scrolling frame.
]]
--[[
interface Row<Item extends any> {
	item: Item,
	index: number,
	depth: number
}
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local prioritize = require(Framework.Util.prioritize)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local List = require(UI.Components.List)
local TreeViewRow = require(UI.Components.TreeViewRow)

local TreeView = Roact.PureComponent:extend("TreeView")

TreeView.defaultProps = {}

-- TODO RIDE-5172: Allow Typecheck to run and support additional props passed to underlying Frame
-- Typecheck.wrap(TreeView, script)
function TreeView:init()
	self.state = {
		rows = {},
	}
	self.defaultGetChildren = function(item)
		return item.children
	end
	self.getChildren = self.props.GetChildren or self.defaultGetChildren
	self.defaultGetItemId = function(item)
		return item
	end
	self.getItemId = self.props.GetItemId or self.defaultGetItemId
	self.onToggle = function(rowProps)
		local item = rowProps.Item
		if self.props.OnExpansionChange then
			local itemId = self.getItemId(item)
			self.props.OnExpansionChange({
				[itemId] = not self.props.Expansion[itemId],
			})
		end
	end
	self.onSelect = function(rowProps)
		local item = rowProps.Item
		if self.props.OnSelectionChange then
			local itemId = self.getItemId(item)
			self.props.OnSelectionChange({
				[itemId] = true,
			})
		end
	end
	self._getRowProps = function(row, index: number, position: UDim2, size: UDim2)
		local props = self.props
		local itemChildren = self.getChildren(row.item)
		local itemId = self.getItemId(row.item)
		return join({
			Key = if props.GetItemKey then props.GetItemKey(row.item, index) else index,
			Index = index,
			Item = row.item,
			Depth = row.depth,
			Position = position,
			Size = size,
			Selected = props.Selection and props.Selection[itemId],
			Children = itemChildren or {},
			OnToggle = self.onToggle,
			OnPress = self.onSelect,
			Expanded = props.Expansion[itemId] or false,
		}, props.RowProps)
	end
end

function TreeView:didMount()
	self:calculateRows()
end

function TreeView:willUpdate(nextProps)
	if nextProps.GetChildren ~= self.props.GetChildren then
		self.getChildren = nextProps.GetChildren or self.defaultGetChildren
	end
	if nextProps.GetItemId ~= self.props.GetItemId then
		self.getItemId = nextProps.GetItemId or self.defaultGetItemId
	end
end

function TreeView:didUpdate(prevProps)
	self:calculateRows(prevProps)
end

function TreeView:calculateRows(prevProps)
	if
		prevProps
		and self.props.RootItems == prevProps.RootItems
		and self.props.GetChildren == prevProps.GetChildren
		and self.props.GetItemKey == prevProps.GetItemKey
		and self.props.Expansion == prevProps.Expansion
		and self.props.Selection == prevProps.Selection
	then
		return
	end
	local rows = {}
	-- Use pairs instead of ipairs as ipairs stops when it encounters a gap or nil element
	for _, child in pairs(self.props.RootItems) do
		self:contributeItem(child, 0, rows)
	end
	self:setState({
		rows = rows,
	})
end

function TreeView:contributeItem(item, depth, list)
	local props = self.props
	local itemId = self.getItemId(item)
	table.insert(list, {
		index = #list + 1,
		depth = depth,
		item = item,
	})
	if props.Expansion[itemId] then
		local children = self.getChildren(item)
		if props.SortChildren then
			table.sort(children, props.SortChildren)
		end
		-- Use pairs instead of ipairs as ipairs stops when it encounters a gap or nil element
		for _, child in pairs(children) do
			self:contributeItem(child, depth + 1, list)
		end
	end
	return list
end

function TreeView:_renderList()
	local props = self.props
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	return Roact.createElement(List, {
		Rows = self.state.rows,
		GetRowProps = props.GetRowProps or self._getRowProps,
		RowHeight = if supportsStyleSheets then props.RowHeight else prioritize(props.RowHeight, style.RowHeight),
		RowComponent = props.RowComponent or TreeViewRow,
	})
end

function TreeView:render()
	local props = self.props
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				Size = props.Size,
				LayoutOrder = props.LayoutOrder,
				ZIndex = props.ZIndex,
				[React.Tag] = joinTags("Component-TreeView", props[React.Tag] or "Input X-PadS X-Stroke X-Corner"),
			}
			else {
				Padding = style.Padding,
				Size = props.Size,
				LayoutOrder = props.LayoutOrder,
				ZIndex = props.ZIndex,
				Style = style,
			},
		{
			List = self:_renderList(),
		}
	)
end

TreeView = withContext({
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(TreeView)

return TreeView
