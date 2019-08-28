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
--]]

-- Need a way to test multiselect since UserInputService doesn't work with lua widgets
local fflagDebugMultiselect = game:DefineFastFlag("DebugStudioDraftsWidgetMultiselect", false)

local UserInputService = game:GetService("UserInputService")

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

		DEBUG_selectionMode = 0,
	})

	self.lastItemClicked = nil
	self.lastClickTime = 0

	-- Since we can't detect ctrl/shift presses in lua widgets, use MMB to cycle between
	-- normal, ctrl, and shift select (in that order)
	self.DEBUG_cycleSelectionMode = function()
		assert(fflagDebugMultiselect)

		local newSelectionMode = (self.state.DEBUG_selectionMode+1) % 3
		self:setState({
			DEBUG_selectionMode = newSelectionMode
		})

		print("DEBUG_selectionMode changed to:", newSelectionMode)
		return
	end

	self.getPressedModifiers = function()
		if fflagDebugMultiselect then
			return {
				Toggle = self.state.DEBUG_selectionMode == 1,
				Expand = self.state.DEBUG_selectionMode == 2,
			}
		else
			-- These will not work until UserInputService is compatible with lua widgets
			return {
				Toggle = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)
						 or UserInputService:IsKeyDown(Enum.KeyCode.RightControl),
				Expand = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
						 or UserInputService:IsKeyDown(Enum.KeyCode.RightShift),
			}
		end
	end

	self.itemRightClicked = function(id)
		if not self.props.MakeMenuActions then return end

		if not self.state.selection[id] then
			self.setSelection(id)
		end

		self:setState({contextMenuOpened = true})
		return
	end

	self.itemClicked = function(id, userInputType)
		local modifiers = self.getPressedModifiers()

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

	-- Sets the selection to the given item, and updates the selection anchors
	self.setSelection = function(id)
		self:setState({
			selection = {[id] = true},
			selectionAnchorTop = id,
			selectionAnchorBottom = id,
		})
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
end

function AbstractItemView:render()
	local items = self.props.Items
	local buttonStyle = self.props.ButtonStyle
	local renderItem = self.props.RenderItem
	local renderContents = self.props.RenderContents

    local itemList = {}
	for i, id in ipairs(items) do
		local selected = self.state.selection[id] == true

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

						[Roact.Event.Activated] = function() self.itemClicked(id) end,
						[Roact.Event.MouseButton2Click] = function() self.itemRightClicked(id) end,
					}, { Item = renderItem(id, ...) })
				}
			end
		})

		itemList[id] = { Button = itemButton, Index = i }
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

			DEBUG_ClickCapturer = fflagDebugMultiselect and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 2,

				[Roact.Event.InputBegan] = function(_, input)
					if input.UserInputType == Enum.UserInputType.MouseButton3 then
						self.DEBUG_cycleSelectionMode()
					end
				end
			}),
		})
	end)
end

return AbstractItemView