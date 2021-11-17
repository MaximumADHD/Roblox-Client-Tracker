--[[
	CheckboxTreeView<Item extends any> - Displays a hierarchical data set with checkboxes.

	Required Props:
		UDim2 Size: The size of the component
		table RootItems: The root items displayed in the tree view.
		table Checked: Keeps track of item states - Set<Item>
		callback OnCheck: Gets called on changes to which items are checked
		
	Optional Props:
		Style Style: a style table supplied from props and theme:getStyle()
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table Expansion: Which items should be expanded - Set<Item>
		table Selection: Which items should be selected - Set<Item>
		callback OnExpansionChange: Called when an item is expanded or collapsed - (changedExpansion: Set<Item>) => void
		callback OnHoverRow: An optional callback called when a row is hovered over. (dataIndex: number) -> ()
		callback OnSelectRow: An optional callback called when a row is selected. (dataIndex: number) -> ()
		callback SortChildren: A comparator function to sort two items in the tree - SortChildren(left: Item, right: Item) => boolean
		Enum.ScrollingDirection ScrollingDirection: The direction to allow scroll in default = XY
		number LayoutOrder: LayoutOrder of the component.
		callback GetContents: An optional callback that describes how a row decides its contents - (item: Item) => string, string
		callback GetChildren: An optional callback that describes how to get children (node: Item) => Set<Item>
		callback AfterItem: An optional callback to append elements to the tree view row
		callback ToggleAncestors: An optional callback to determine toggling parent checkboxes in relation to an item
		callback ToggleDescendants: An optional callback to determine toggling child checkboxes in relation to an item
		boolean ExpandableRoot: Whether or not the root node can be expanded
]]
local FFlagDevFrameworkCheckboxTreeViewCustomPropagate = game:GetFastFlag("DevFrameworkCheckboxTreeViewCustomPropagate")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local UI = Framework.UI
local Checkbox = require(UI.Checkbox)
local Pane = require(UI.Pane)
local TreeView = require(UI.TreeView)

local function buildRootExpansion(expandableRoot, rootItems)
	local expansion = {}

	if not expandableRoot then
		for _, instance in pairs(rootItems) do
			expansion[instance] = true
		end
	end

	return expansion
end

local function TreeRowCheckbox(props)
	local paneProps = {
		LayoutOrder = props.LayoutOrder,
		Padding = 4,
		Size = UDim2.fromOffset(24, 24),
	}

	paneProps.Padding = 4
	paneProps.Size = UDim2.fromOffset(24, 24)

	return Roact.createElement(Pane, paneProps, {
		Checkbox = Roact.createElement(Checkbox, {
			Checked = props.Checked[props.Item],
			OnClick = function()
				props.OnCheck(props.Item)
			end,
		})
	})
end

-- An implementation of the original propagate-up behavior
local function toggleAncestorsByAllChildren(item, checkedStates, ancestry, getChildren, updateChecked)
	local function toggleAncestorsRecursive(item)
		local parent = ancestry[item]
		if not parent or updateChecked[item] == nil then
			return
		end

		local allChildrenChecked = true
		local anyChildChecked = false

		for _, child in ipairs(getChildren(parent)) do
			local checked = updateChecked[child]

			if checked == nil then
				checked = checkedStates[child] or false
			end

			allChildrenChecked = allChildrenChecked and (checked ~= Checkbox.Indeterminate and checked)
			anyChildChecked = anyChildChecked or (checked == Checkbox.Indeterminate or checked)
		end

		if allChildrenChecked then
			if checkedStates[parent] == true then
				return
			end
			updateChecked[parent] = true
		elseif not anyChildChecked then
			if checkedStates[parent] == false then
				return
			end
			updateChecked[parent] = false
		else
			if checkedStates[parent] == Checkbox.Indeterminate then
				return
			end
			updateChecked[parent] = Checkbox.Indeterminate
		end
		toggleAncestorsRecursive(parent)
	end
	toggleAncestorsRecursive(item)
end

-- An implementation of the original propagate-down behavior
local function toggleAllChildren(item, checkedStates, getChildren, updateChecked)
	local function toggleChildrenRecursive(item)
		if getChildren(item) then
			for _, child in ipairs(getChildren(item)) do
				if checkedStates[child] ~= updateChecked[item] then
					updateChecked[child] = updateChecked[item]
					toggleChildrenRecursive(child)
				end
			end
		end
	end
	toggleChildrenRecursive(item)
end

local CheckboxTreeView = Roact.PureComponent:extend("CheckboxTreeView")

-- table of functions defining propagate behavior
CheckboxTreeView.UpPropagators = {
	toggleAncestorsByAllChildren = toggleAncestorsByAllChildren,
	default = function(item, checkedStates, ancestry, getChildren, updateChecked)
		return
	end,
}

CheckboxTreeView.DownPropagators = {
	toggleAllChildren = toggleAllChildren,
	default = function(item, checkedStates, getChildren, updateChecked)
		return
	end,
}

local function buildAncestry(rootItems, getChildren)
	local ancestry = {}

	local function buildAncestryPropogateDown(parent)
		local children = getChildren(parent)
		if children then
			for _, item in pairs(children) do
				ancestry[item] = parent

				buildAncestryPropogateDown(item)
			end
		end
	end

	for _, item in pairs(rootItems) do
		buildAncestryPropogateDown(item)
	end

	return ancestry
end

local function buildChange(item, checkedStates, ancestry, getChildren, toggleAncestors, toggleDescendants)
	local updateChecked = {}
	local state =  not checkedStates[item]

	if state == nil then
		return updateChecked
	end

	if FFlagDevFrameworkCheckboxTreeViewCustomPropagate then
		updateChecked[item] = state

		if toggleAncestors then
			toggleAncestors(item, checkedStates, ancestry, getChildren, updateChecked)
		else
			CheckboxTreeView.UpPropagators.default(item, checkedStates, ancestry, getChildren, updateChecked)
		end

		if toggleDescendants then
			toggleDescendants(item, checkedStates, getChildren, updateChecked)
		else
			CheckboxTreeView.DownPropagators.default(item, checkedStates, getChildren, updateChecked)
		end
		return updateChecked

	else
		local function propagateUp(item)
			local parent = ancestry[item]
			if not parent or state == nil then
				return
			end

			local allChildrenChecked = true
			local anyChildChecked = false

			for _, child in ipairs(getChildren(parent)) do
				local checked = updateChecked[child]

				if checked == nil then
					checked = checkedStates[child] or false
				end

				allChildrenChecked = allChildrenChecked and (checked ~= Checkbox.Indeterminate and checked)
				anyChildChecked = anyChildChecked or (checked == Checkbox.Indeterminate or checked)
			end

			if allChildrenChecked then
				if checkedStates[parent] == true then
					return
				end
				updateChecked[parent] = true
			elseif not anyChildChecked then
				if checkedStates[parent] == false then
					return
				end
				updateChecked[parent] = false
			else
				if checkedStates[parent] == Checkbox.Indeterminate then
					return
				end
				updateChecked[parent] = Checkbox.Indeterminate
			end

			propagateUp(parent)
		end

		-- The following function makes sure that the states for all descendant checkboxes are correct.
		local function propagateDown(item)
			if getChildren(item) then
				for _, child in ipairs(getChildren(item)) do
					if checkedStates[child] ~= state then
						updateChecked[child] = state

						propagateDown(child)
					end
				end
			end

			return
		end

		updateChecked[item] = state

		propagateUp(item)
		propagateDown(item)

		return updateChecked
	end
end

CheckboxTreeView.defaultProps = {
	GetChildren = function(node) return node.children end,
	ExpandableRoot = true,
}

function CheckboxTreeView:init()
	local expansion = buildRootExpansion(self.props.ExpandableRoot, self.props.RootItems)

	self.state = {
		expansion = expansion,
	}

	self.ancestry = buildAncestry(self.props.RootItems, self.props.GetChildren)

	self.onExpansionChange = function(newExpansion)
		self:setState({
			expansion = join(self.state.expansion, newExpansion),
		})
	end

	local expandableRoot = self.props.ExpandableRoot

	self.rowProps = {
		BeforeIndentItem = TreeRowCheckbox,
		ExpandableRoot = expandableRoot,
		AfterItem = self.props.AfterItem,
		OnCheck = function(item)
			self.props.OnCheck(
				buildChange(item, self.props.Checked, self.ancestry, self.props.GetChildren, self.props.ToggleAncestors, self.props.ToggleDescendants)
			)
		end,
	}
end

function CheckboxTreeView:didUpdate(previousProps, previousState)
	self.ancestry = buildAncestry(self.props.RootItems, self.props.GetChildren)

	if not self.props.ExpandableRoot and previousProps.ExpandableRoot ~= self.props.ExpandableRoot then
		local expansion = buildRootExpansion(self.props.ExpandableRoot, self.props.RootItems)

		self:setState({
			expansion = join(self.state.expansion, {
				expansion
			})
		})
	end
end

function CheckboxTreeView:render()
	assert(
		(self.props.Expansion and self.props.OnExpansionChange) or
			(not self.props.Expansion and not self.props.OnExpansionChange),
		"Expansion is either entirely handled externally, or entirely handled by CheckboxTreeView."
	)
	local rowProps = join(self.rowProps, {
		Checked = self.props.Checked,
		GetContents = self.props.GetContents,
	})

	return Roact.createElement(TreeView, {
		Size = self.props.Size,
		Expansion = self.props.Expansion or self.state.expansion,
		Selection = self.props.Selection,
		RootItems = self.props.RootItems,
		RowProps = rowProps,
		Style = self.props.Style,
		OnExpansionChange = self.props.OnExpansionChange or self.onExpansionChange,
		OnHoverRow = self.props.OnHoverRow,
		OnSelectionChange = self.props.OnSelectionChange,
		SortChildren = self.props.SortChildren,
		ScrollingDirection = self.props.ScrollingDirection,
		LayoutOrder = self.props.LayoutOrder,
		GetChildren = self.props.GetChildren,
	})
end

return CheckboxTreeView
