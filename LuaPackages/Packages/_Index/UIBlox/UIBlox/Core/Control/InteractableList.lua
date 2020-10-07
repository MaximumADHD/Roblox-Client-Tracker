local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

local InteractableListItem = require(script.Parent.InteractableListItem)
local SelectionMode = require(script.Parent.Enum.SelectionMode)

local LAYOUT_KEY = "$layout"

--[[
	Manages selection and control state for a list of items,
	useful as a base for components like button lists, tab bars, etc

	expects a list of arbitrary items, and a callback to render an item
	each rendered item will be wrapped by a controllable, its state will be passed to the callback
	each item has also a selection state, which can be managed by the component or forced through a prop
	for managed selection, there are 3 selection modes: single, multiple, or none
	a callback can be provided to handle user input selection change events (regardless of selection state)
]]

local InteractableList = Roact.PureComponent:extend("InteractableList")

InteractableList.validateProps = t.strictInterface({
	-- list of items to display as interactables, should be a table
	itemList = t.table,
	-- function(item: any, state: ControlState, selected: boolean) called to render each item
	renderItem = t.callback,
	-- function(itemList: table, renderItem: function(key)) called to render the list container
	renderList = t.optional(t.callback),
	-- list of currently selected keys (from itemList), if not provided selection will be managed by component
	selection = t.optional(t.table),
	-- current selection mode: single, multiple, none
	selectionMode = t.optional(SelectionMode.isEnumValue),
	-- function(newSelection)
	onSelectionChanged = t.optional(t.callback),
	--- options for default renderList, passed to a Frame component
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	padding = t.optional(t.UDim),
	fillDirection = t.optional(t.enum(Enum.FillDirection)),
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment)),
	verticalAlignment = t.optional(t.enum(Enum.VerticalAlignment)),
	sortOrder = t.optional(t.enum(Enum.SortOrder)),
	--- options for default controllable
	-- container size for each item
	itemSize = t.optional(t.UDim2),
})

InteractableList.defaultProps = {
	renderList = function(items, renderItem, extraProps)
		local children = {}
		for key in pairs(items) do
			children[key] = renderItem(key)
		end
		return Roact.createElement("Frame", {
			Size = extraProps.size,
			Position = extraProps.position,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, Cryo.Dictionary.join({
			[LAYOUT_KEY] = Roact.createElement("UIListLayout", {
				Padding = extraProps.padding,
				FillDirection = extraProps.fillDirection,
				HorizontalAlignment = extraProps.horizontalAlignment,
				VerticalAlignment = extraProps.verticalAlignment,
				SortOrder = extraProps.sortOrder,
			})
		}, children))
	end,
	size = UDim2.fromScale(1,1),
	itemSize = UDim2.fromScale(1, 1),
	selectionMode = SelectionMode.Single,
}

function InteractableList:init()
	local state = {
		interactable = {},
		selection = {},
	}
	if self.props.selectionMode == SelectionMode.Single then
		local firstKey = next(self.props.itemList)
		if firstKey ~= nil then
			state.selection = { firstKey }
		end
	end
	self:setState(state)

	self.setInteractableState = function(key, newState)
		self:setState({
			interactable = Cryo.Dictionary.join(self.state.interactable, {
				[key] = newState,
			})
		})
	end
	self.setSelection = function(newSelection)
		self:setState({
			selection = newSelection,
		})
	end
end

function InteractableList:getSelection()
	if self.props.selection then
		return self.props.selection
	end
	if self.props.selectionMode == SelectionMode.None then
		return {}
	end
	local selection = Cryo.List.filter(self.state.selection, function(selectedKey)
		return self.props.itemList[selectedKey] ~= nil
	end)
	if self.props.selectionMode == SelectionMode.Single then
		local firstKey = selection[#selection]
		if firstKey == nil then
			firstKey = next(self.props.itemList)
		end
		if firstKey ~= nil then
			return { firstKey }
		else
			return {}
		end
	else
		return selection
	end
end

function InteractableList:didMount()
	if self.props.selection == nil and self.props.onSelectionChanged then
		self.props.onSelectionChanged(self:getSelection())
	end
end

function InteractableList:render()
	return self.props.renderList(self.props.itemList, function(key)
		local interactableState = self.state.interactable[key] or ControlState.Default
		local selection = self:getSelection()

		return Roact.createElement(InteractableListItem, {
			key = key,
			item = self.props.itemList[key],
			interactableState = interactableState,
			selection = selection,
			renderItem = self.props.renderItem,
			itemSize = self.props.itemSize,
			selectionMode = self.props.selectionMode,
			onSelectionChanged = self.props.onSelectionChanged,
			setInteractableState = self.setInteractableState,
			setSelection = self.setSelection,
		})
	end, self.props)
end

return InteractableList
