--[[
	CheckboxTreeView<Item extends any> - Displays a hierarchical data set with checkboxes.

	Required Props:
		UDim2 Size: The size of the component
		table RootItems: The root items displayed in the tree view.
		table Checked: Keeps track of item states - Set<Item>
		callback OnCheck: Gets called on changes to which items are checked
		
	Optional Props:
		Style Style: a style table supplied from props and theme:getStyle()
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
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local UI = Framework.UI
local Checkbox = require(UI.Checkbox)
local Pane = require(UI.Pane)
local TextLabel = require(UI.TextLabel)
local TreeView = require(UI.TreeView)

local FFlagDevFrameworkTreeViewRow = game:GetFastFlag("DevFrameworkTreeViewRow")
local FFlagDevFrameworkCheckboxTreeView = game:GetFastFlag("DevFrameworkCheckboxTreeView")
local FFlagDevFrameworkGenericTreeViewRow = game:GetFastFlag("DevFrameworkGenericTreeViewRow")

local function TreeRowCheckbox(props)
	local paneProps = {
		LayoutOrder = props.LayoutOrder,
	}

	if #props.Children > 0 then
		paneProps.Padding = 4
		paneProps.Size = UDim2.fromOffset(24, 24)
	else
		paneProps.Padding = {
			Top = 4,
			Bottom = 4,
			Left = 21,
			Right = 4,
		}
		paneProps.Size = UDim2.fromOffset(40, 24)
	end

	return Roact.createElement(Pane, paneProps, {
		Checkbox = Roact.createElement(Checkbox, {
			Checked = props.Checked[props.Item],
			OnClick = function()
				props.OnCheck(props.Item)
			end,
		})
	})
end

local CheckboxTreeView = Roact.PureComponent:extend("CheckboxTreeView")

local function buildAncestry(rootItems, getChildren)
	local ancestry = {}

	local function DEPRECATED_buildAncestryPropogateDown(parent)
		if parent.children then
			for _, item in pairs(parent.children) do
				ancestry[item] = parent
		
				DEPRECATED_buildAncestryPropogateDown(item)
			end
		end
	end

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
		if FFlagDevFrameworkGenericTreeViewRow then
			buildAncestryPropogateDown(item)
		else
			DEPRECATED_buildAncestryPropogateDown(item)
		end
	end

	return ancestry
end

local function buildChange(item, state, checkedStates, ancestry, getChildren)
	local updateChecked = {}

	if state == nil then
		return updateChecked
	end

	-- The following function makes sure that the states for all ancestral checkboxes are correct.
	local function DEPRECATED_propagateUp(item)
		local parent = ancestry[item]
		if not parent or state == nil then
			return
		end

		local allChildrenChecked = true
		local anyChildChecked = false

		for _, child in ipairs(parent.children) do
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

		DEPRECATED_propagateUp(parent)
	end

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

	local function DEPRECATED_propagateDown(item)
		if item.children then
			for _, child in ipairs(item.children) do
				if checkedStates[child] ~= state then
					updateChecked[child] = state

					DEPRECATED_propagateDown(child)
				end
			end
		end

		return
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

	if FFlagDevFrameworkGenericTreeViewRow then
		propagateUp(item)
		propagateDown(item)
	else
		DEPRECATED_propagateUp(item)
		DEPRECATED_propagateDown(item)
	end

	return updateChecked
end

function CheckboxTreeView:didUpdate(previousProps, previousState)
	if self.props.RootItems ~= previousProps.RootItems then
		self.ancestry = buildAncestry(self.props.RootItems, self.props.GetChildren)
	end
end

function CheckboxTreeView:init()
	self.state = {
		expansion = {},
	}

	self.ancestry = buildAncestry(self.props.RootItems, self.props.GetChildren)
	
	self.onExpansionChange = function(newExpansion)
		self:setState({
			expansion = join(self.state.expansion, newExpansion)
		})
	end

	self.rowProps = {
		BeforeIcon = TreeRowCheckbox,
		Checked = not FFlagDevFrameworkGenericTreeViewRow and self.props.Checked,
		OnCheck = function(item)
			self.props.OnCheck(buildChange(item, not self.props.Checked[item], self.props.Checked, self.ancestry, self.props.GetChildren))
		end,
	}
end

function CheckboxTreeView:render()
	assert(
		(self.props.Expansion and self.props.OnExpansionChange) or
		(not self.props.Expansion and not self.props.OnExpansionChange),
		"Expansion is either entirely handled externally, or entirely handled by CheckboxTreeView."
	)
	local rowProps = join(self.rowProps, {
		Checked = self.props.Checked,
		GetContents = FFlagDevFrameworkGenericTreeViewRow and self.props.GetContents or nil,
	})

	if not FFlagDevFrameworkTreeViewRow or not FFlagDevFrameworkCheckboxTreeView then
		return Roact.createElement(TextLabel, {
			Text = "Please enable FFlagDevFrameworkTreeViewRow and FFlagDevFrameworkCheckboxTreeView to view this story",
			AutomaticSize = Enum.AutomaticSize.XY,
		})
	end
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
		GetChildren = FFlagDevFrameworkGenericTreeViewRow and self.props.GetChildren,
	})
end

CheckboxTreeView.defaultProps = {
	GetChildren = function (node) return node.children end,
}

return CheckboxTreeView