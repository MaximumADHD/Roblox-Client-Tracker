--[[
	An event name entry in the Edit Events dialog.
	Used to modify the event's name or delete the event.

	Props:
		UDim2 Size = The size of the entry.
		string Name = The name of the event to display.
		UDim PaddingLeft = The left padding of the text to display.
		UDim PaddingRight = The right padding of the text to display.
		table UnusedEvents = A list of events which exist but are not added to this frame.
			This is used in the dropdown menu of new events to add.

		function OnRenameEvent(string name, string newName) = A callback for
			when the user wants to rename an event to the new name.
		function OnDeleteEvent(string name) = A callback for when the user
			wants to delete the event at the given name.
		function OnDeleteAllEvents(string name) = A callback for when the user
			wants to delete all the events with the given name.
]]

local TEXTBOX_PADDING = 8
local ICON_SIZE = 8
local MAX_EVENT_ITEMS = 3

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local Mouse = require(Plugin.Src.Context.Mouse)
local getMouse = Mouse.getMouse

local FilteringTextBox = require(Plugin.Src.Components.FilteringTextBox)
local EditEventMenu = require(Plugin.Src.Components.EditEventsDialog.EditEventMenu)
local ContextButton = require(Plugin.Src.Components.ContextButton)

local EventNameEntry = Roact.PureComponent:extend("EventNameEntry")

function EventNameEntry:init(initialProps)
	self.state = {
		editing = false,
		showContextMenu = false,
	}

	self.onMenuItemClicked = function(item)
		if item == Constants.ACTION_KEYS.Edit then
			self:setState({
				editing = true,
			})
		elseif item == Constants.ACTION_KEYS.Delete then
			self.props.OnDeleteAllEvents(self.props.Name)
		end
	end

	self.onDeleteEvent = function()
		self.props.OnDeleteEvent(self.props.Name)
	end

	self.focusChanged = function(rbx, focused)
		if not focused then
			self:setState({
				editing = false,
			})
			local name = self.props.Name
			local newName = rbx.Text
			if newName == "" then
				self.props.OnDeleteEvent(name)
			else
				self.props.OnRenameEvent(name, newName)
			end
		end
	end

	self.onItemClicked = function(item)
		self:setState({
			editing = false,
		})
		local name = self.props.Name
		local newName = item
		if name == "" and newName == "" then
			self.props.OnDeleteEvent(name)
		elseif newName ~= "" and newName ~= name then
			self.props.OnRenameEvent(name, newName)
		end
	end

	self.showMenu = function()
		self:setState({
			showContextMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.mouseEnter = function()
		getMouse(self).pushCursor("PointingHand")
	end

	self.mouseLeave = function()
		getMouse(self).popCursor()
	end
end

function EventNameEntry:didMount()
	if self.props.Name == "" then
		self:setState({
			editing = true,
		})
	end
end

function EventNameEntry:willUnmount()
	getMouse(self).resetCursor()
end

function EventNameEntry:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state
		local size = props.Size
		local name = props.Name
		local paddingLeft = props.PaddingLeft
		local paddingRight = props.PaddingRight
		local unusedEvents = props.UnusedEvents

		local editing = state.editing
		local trackTheme = theme.trackTheme
		local dialogTheme = theme.dialogTheme

		return Roact.createElement("Frame", {
			Size = size,
			BackgroundColor3 = trackTheme.shadedBackgroundColor,
			BorderColor3 = theme.borderColor,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = paddingLeft,
				PaddingRight = paddingRight,
				PaddingTop = UDim.new(0, 2),
				PaddingBottom = UDim.new(0, 2),
			}),

			Label = not editing and Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -Constants.TRACKLIST_BUTTON_SIZE, 1, 0),
				Text = name,
				TextColor3 = dialogTheme.textColor,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Font = theme.font,
				TextSize = dialogTheme.textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),

			TextBox = editing and Roact.createElement(FilteringTextBox, {
				Size = UDim2.new(1, -Constants.TRACKLIST_BUTTON_SIZE - TEXTBOX_PADDING, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				CaptureFocus = true,
				Text = name,
				ClearTextOnFocus = false,
				FocusChanged = self.focusChanged,
				OnItemClicked = self.onItemClicked,
				Items = unusedEvents,
				MaxItems = MAX_EVENT_ITEMS,
			}),

			DeleteButton = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0, -paddingLeft.Offset / 2, 0.5, 0),
				BackgroundTransparency = 1,

				Image = dialogTheme.deleteImage,
				ImageColor3 = dialogTheme.subTextColor,
				ScaleType = Enum.ScaleType.Fit,

				[Roact.Event.Activated] = self.onDeleteEvent,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			}),

			ContextButton = Roact.createElement(ContextButton, {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				OnActivated = self.showMenu,
			}),

			EditEventMenu = Roact.createElement(EditEventMenu, {
				ShowMenu = state.showContextMenu,
				OnMenuOpened = self.hideMenu,
				OnMenuItemClicked = self.onMenuItemClicked,
			}),
		})
	end)
end

return EventNameEntry
