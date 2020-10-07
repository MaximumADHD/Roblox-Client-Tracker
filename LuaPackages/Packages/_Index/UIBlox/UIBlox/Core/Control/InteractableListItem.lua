
local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local Interactable = require(UIBlox.Core.Control.Interactable)

local SelectionMode = require(script.Parent.Enum.SelectionMode)

--[[
	subcomponent of InteractableList, not intended for use separately
	extracted from the main component's code to cache the onStateChanged and onActivated callbacks
]]

local InteractableListItem = Roact.PureComponent:extend("InteractableListItem")

function InteractableListItem:init()
	self.onStateChanged = function(oldState, newState)
		self.props.setInteractableState(self.props.key, newState)
	end
	self.onActivated = function()
		local oldSelection = self.props.selection
		local newSelection = { self.props.key }
		if self.props.selectionMode == SelectionMode.Multiple then
			newSelection = Cryo.List.filter(oldSelection, function(selectedKey)
				return selectedKey ~= self.props.key
			end)
			if #newSelection == #oldSelection then
				table.insert(newSelection, self.props.key)
			end
		end
		if self.props.onSelectionChanged then
			self.props.onSelectionChanged(newSelection, oldSelection)
		end
		if self.props.selectionMode ~= SelectionMode.None then
			self.props.setSelection(newSelection)
		end
	end
end

function InteractableListItem:render()
	local selected = Cryo.List.find(self.props.selection, self.props.key) ~= nil
	local renderedItem, extraProps = self.props.renderItem(self.props.item, self.props.interactableState, selected)

	return Roact.createElement(Interactable, Cryo.Dictionary.join({
		Size = self.props.itemSize,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, extraProps or {}, {
		onStateChanged = self.onStateChanged,
		[Roact.Event.Activated] = self.onActivated,
	}), {
		[self.props.key] = renderedItem,
	})
end

return InteractableListItem
