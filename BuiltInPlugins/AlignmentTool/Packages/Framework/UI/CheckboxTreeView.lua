--[[
	CheckboxTreeView<Item extends any> - Displays a hierarchical data set with checkboxes.

	Required Props:
		UDim2 Size: The size of the component
		table RootItems: The root items displayed in the tree view.
		table Checked: Keeps track of item states - Set<Item>
		callback OnCheck: Gets called on changes to which items are checked
		
	Optional Props:
		Enum.ScrollingDirection ScrollingDirection: The direction to allow scroll in default = XY
		number LayoutOrder: LayoutOrder of the component.
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

local function TreeRowCheckbox(props)
	local paneProps = {
		LayoutOrder = props.LayoutOrder,
	}

	if props.Item.children then
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

local function buildAncestryPropogateDown(ancestry, parent)
	if parent.children then
		for _, item in pairs(parent.children) do
			ancestry[item] = parent
	
			buildAncestryPropogateDown(ancestry, item)
		end
	end
end

local function buildAncestry(rootItems)
	local ancestry = {}

	for _, item in pairs(rootItems) do
		buildAncestryPropogateDown(ancestry, item)
	end

	return ancestry
end

local function buildChange(item, state, checkedStates, ancestry)
	local updateChecked = {}

	if state == nil then
		return updateChecked
	end

	-- The following function makes sure that the states for all ancestral checkboxes are correct.
	local function propagateUp(item)
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

		propagateUp(parent)
	end

	-- The following function makes sure that the states for all descendant checkboxes are correct.
	local function propagateDown(item)
		if item.children then
			for _, child in ipairs(item.children) do
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

function CheckboxTreeView:didUpdate(previousProps, previousState)
	if self.props.RootItems ~= previousProps.RootItems then
		self.ancestry = buildAncestry(self.props.RootItems)
	end	
end

function CheckboxTreeView:init()
	self.state = {
		expansion = {},
	}

	self.ancestry = buildAncestry(self.props.RootItems)
	
	self.onExpansionChange = function(newExpansion)
		self:setState({
			expansion = join(self.state.expansion, newExpansion)
		})
	end

	self.rowProps = {
		Checked = self.props.Checked,
		BeforeIcon = TreeRowCheckbox,
		OnCheck = function(item)
			self.props.OnCheck(buildChange(item, not self.props.Checked[item], self.props.Checked, self.ancestry))
		end
	}
end

function CheckboxTreeView:render()
	local rowProps = join(self.rowProps, { Checked = self.props.Checked })

	if not FFlagDevFrameworkTreeViewRow or not FFlagDevFrameworkCheckboxTreeView then
		return Roact.createElement(TextLabel, {
			Text = "Please enable FFlagDevFrameworkTreeViewRow and FFlagDevFrameworkCheckboxTreeView to view this story",
			AutomaticSize = Enum.AutomaticSize.XY,
		})
	end
	return Roact.createElement(TreeView, {
		Size = self.props.Size,
		Expansion = self.state.expansion,
		RootItems = self.props.RootItems,
		RowProps = rowProps,
		OnExpansionChange = self.onExpansionChange,
		LayoutOrder = self.props.LayoutOrder,
		ScrollingDirection = self.props.ScrollingDirection,
	})
end

return CheckboxTreeView