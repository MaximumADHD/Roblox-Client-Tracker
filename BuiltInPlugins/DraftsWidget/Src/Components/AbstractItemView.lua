--[[
	An abstract view for an arbitrary set of ordered, selectable items.

	Usage might look something like: MyFeaturesListView & MyFeaturesListItem > ListItemView > AbstractItemView
	MyFeaturesListItem controls the appearance of each item, but does so through a RenderItem callback similar
	to RenderContents in Button. The implementor of AbstractItemView (in this case, ListItemView) controls the
	layout and scaling/position of each item with another callback, RenderContents.

	Props:
	Items
		An ordered list of IDs. The IDs can be anything (guid, instance, etc), as this component does not
		use them directly. These IDs are surfaced to consumers whenever actions are performed on items

	MakeMenuActions(selectedIds)
		Callback to return a data structure of context menus to be used by ContextMenus in the UILibrary
		selectedIds is an ordered list of the current selection

	OnDoubleClicked(clickedId)
		Callback that is invoked whenever an item is double clicked

	OnSelectionChanged(selectedIds)
		Callback that is invoked whenever selection changes

	RenderItem(id, buttonTheme, hovered)
		Callback to create an element for a single item. The element returned by the callback is parented to
		buttons created by the AbstractItemView used to detect clicks for selection / context menus

	RenderContents(items)
		Callback that provides a dict of items in the form of [id] = { Button = roactElement, Index = i }
		Used by the implementor of AbstractItemView (e.g. ListItemView) to lay out elements (e.g. create
		UIListLayout, set size/position of elements, etc). Returned element is rendered inside AbstractItemView

	TODO (awarwick) 7/28/2019 This should live in MyFeaturesListItem
	ButtonStyle
		UILibrary style the item buttons should be rendered in.

	[GetCurrentSelection]
		BindableFunction that allows fetching the AbstractItemView's selection. Kind of a hack given that Roact is intended
		to isolate components & the only interaction components have is arbitrarting props to their children, but that
		doesn't hold up to snuff in the real world. We already have a precedent for working around this by passing around
		callbacks that allow children to call back into their parents to do stuff, so this BindableFunction is just the
		other way around and allows parents to read from the children (not mutate! Use props if you want to do this). The
		alternative is to create a global reducer for _every_ AbstractItemView (list/grid view) which is absolutely awful.
		Example use cases: on PluginAction keybind invoke, delete the selection; on button click, commit the selection
--]]

local Plugin = script.Parent.Parent.Parent
local UILibrary = require(Plugin.Packages.UILibrary)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ContextMenus = UILibrary.Studio.ContextMenus
local withLocalization = UILibrary.Localizing.withLocalization

local Button = UILibrary.Component.Button

local DOUBLE_CLICK_TIME = 0.5

local AbstractItemView = Roact.PureComponent:extend("AbstractItemView")

function AbstractItemView:init()
	self:setState({
		selection = {},

		-- In Qt, AbstractItemViews have permanent and temporary selections, and we reproduce that behavior here
		-- This is noticeable when you shift+select above an item, and then below that item. Your first selection
		-- above the item will be lost. Ctrl+select finalizes the selection.
		selectionAnchorTop = nil,
		selectionAnchorBottom = nil,

		contextMenuOpened = false,
	})

	self.lastItemClicked = nil
	self.lastClickTime = 0

	self.getPressedModifiers = function(inputObject)
		return {
			Toggle = inputObject:IsModifierKeyDown(Enum.ModifierKey.Ctrl),
			Expand = inputObject:IsModifierKeyDown(Enum.ModifierKey.Shift),
		}
	end

	self.itemRightClicked = function(id)
		if not self.props.MakeMenuActions then return end

		if not self.state.selection[id] then
			self.setSelection(id)
		end

		self:setState({contextMenuOpened = true})
		return
	end

	self.itemClicked = function(id, inputObject)
		local modifiers = self.getPressedModifiers(inputObject)

		if modifiers.Expand then
			self.expandSelection(id)
		elseif modifiers.Toggle then
			self.toggleSelected(id)
		else
			self.setSelection(id)
		end

		if self.lastItemClicked == id then
			if tick() - self.lastClickTime < DOUBLE_CLICK_TIME then
				self.itemDoubleClicked(id)
				self.lastItemClicked = nil
			end
		else
			self.lastItemClicked = id
		end

		self.lastClickTime = tick()
	end

	self.itemDoubleClicked = function(id)
		if self.props.OnDoubleClicked then
			self.props.OnDoubleClicked(id)
		end
	end
	
	self.selectionChanged = function(selectedIds)
		if self.props.OnSelectionChanged  and game:GetFastFlag("DraftWidgetResponsiveCommitButton") then
			self.props.OnSelectionChanged(selectedIds)
		end
	end

	-- Sets the selection to the given item, and updates the selection anchors
	self.setSelection = function(id)
		self:setState({
			selection = {[id] = true},
			selectionAnchorTop = id,
			selectionAnchorBottom = id,
		})
		self.selectionChanged(self.state.selection)
	end

	-- Toggles whether the clicked item is selected, and updates the selection anchors
	self.toggleSelected = function(id)
		local items = self.props.Items

		local currentlySelected = self.state.selection[id] ~= nil
		local newSelection = Cryo.Dictionary.join(self.state.selection, {
			[id] = currentlySelected and Cryo.None or true,
		})

		local anchorTop, anchorBottom
		for _,id in ipairs(items) do
			if newSelection[id] then
				anchorTop = anchorTop or id
				anchorBottom = id
			end
		end

		self:setState({
			selection = newSelection,
			selectionAnchorTop = anchorTop,
			selectionAnchorBottom = anchorBottom
		})
	end

	-- Grow/shrink the selection to the clicked item. This selection is not anchored
	self.expandSelection = function(clickedId)
		local items = self.props.Items

		local selectionTopPosition, selectionBottomPosition, clickedPosition
		for i,id in ipairs(items) do
			if id == self.state.selectionAnchorTop then
				selectionTopPosition = i
			end
			if id == self.state.selectionAnchorBottom then
				selectionBottomPosition = i
			end
			if id == clickedId then
				clickedPosition = i
			end
		end

		-- Selected items may have been removed from the view
		selectionTopPosition = selectionTopPosition or clickedPosition
		selectionBottomPosition = selectionBottomPosition or clickedPosition

		local newSelection = {}
		for i = math.min(selectionTopPosition, clickedPosition), math.max(selectionBottomPosition, clickedPosition) do
			local id = items[i]
			newSelection[id] = true
		end

		self:setState({
			selection = newSelection
		})
	end

	self.makeMenuActions = function(localization)
		local items = self.props.Items
		local makeMenuActions = self.props.MakeMenuActions

		local selectedIds = {}
		for _,id in ipairs(items) do
			if self.state.selection[id] then
				table.insert(selectedIds, id)
			end
		end

		return makeMenuActions(localization, selectedIds)
	end

	self.getSelectedIds = function()
		local selectedIds = {}
		for _,id in ipairs(self.props.Items) do
			if self.state.selection[id] then
				table.insert(selectedIds, id)
			end
		end

		return selectedIds
	end

	if self.props.GetCurrentSelection then
		self.props.GetCurrentSelection.OnInvoke = self.getSelectedIds
	end
end

function AbstractItemView:didUpdate(previousProps, previousState)
	if previousProps.GetCurrentSelection ~= self.props.GetCurrentSelection then
		if previousProps.GetCurrentSelection then
			previousProps.GetCurrentSelection.OnInvoke = nil
		end
		if self.props.GetCurrentSelection then
			self.props.GetCurrentSelection.OnInvoke = self.getSelectedIds
		end
	end
end

function AbstractItemView:render()
	local items = self.props.Items
	local buttonStyle = self.props.ButtonStyle
	local renderItem = self.props.RenderItem
	local renderContents = self.props.RenderContents

	local existingIds = {}
    local itemList = {}
	for i, id in ipairs(items) do
		local selected = self.state.selection[id] == true
		existingIds[id] = true

		local itemButton = Roact.createElement(Button, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 0,
			BorderSizePixel = 0,

			Style = buttonStyle,
			StyleState = selected and "selected" or nil,

			RenderContents = function(...)
				return {
					ClickCapturer = Roact.createElement("TextButton", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						Text = "",

						[Roact.Event.Activated] = function(_, inputObject) self.itemClicked(id, inputObject) end,
						[Roact.Event.MouseButton2Click] = function() self.itemRightClicked(id) end,
					}, { Item = renderItem(id, ...) })
				}
			end
		})

		itemList[id] = { Button = itemButton, Index = i }
	end

	-- Once a draft is removed from the drafts list, we need to remove it from the selection
	-- or it will alread be selected if it is ever readded as a draft

	local selectionHasChanged = false
	for id,_ in pairs(self.state.selection) do
		if not existingIds[id] then
			self.state.selection[id] = nil
			selectionHasChanged = true
		end
	end

	if selectionHasChanged then
		self.selectionChanged(self.state.selection)
	end

	return withLocalization(function(localization)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Contents = renderContents(itemList),

			ContextMenu = self.state.contextMenuOpened and Roact.createElement(ContextMenus.ContextMenu, {
				Actions = self.makeMenuActions(localization),
				OnMenuOpened = function()
					self:setState({contextMenuOpened = false})
				end,
			}),
		})
	end)
end

return AbstractItemView