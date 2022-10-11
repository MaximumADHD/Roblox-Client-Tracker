--[[
	A dialog used to display and edit animation events.
	Performs functions on a duplicate of Events as a state, and then
	can commit these changes via the OnSaved function or cancel the
	changes, thus not affecting the original Events state.

	Props:
		table Events = The Events table from the current animation data.
		int Tick = The current tick where events are being edited.

		function OnSaved(table newEvents) = A callback for when the user wants
			to save the modified newEvents table to the animation data.
		function OnClose = A callback for when the dialog closes.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local BORDER_PADDING = 10
local EDGE_PADDING = 20
local CENTER_PADDING = 8
local BOTTOM_PADDING = 10

local COLUMN_WIDTH = 220
local ROW_HEIGHT = 22

local MIN_INNER_HEIGHT = ROW_HEIGHT * 3
local DEFAULT_INNER_HEIGHT = ROW_HEIGHT * 5
local PADDING_HEIGHT = Constants.PROMPT_BUTTON_SIZE.Y + BORDER_PADDING * 3
local WIDTH = COLUMN_WIDTH * 2 + BORDER_PADDING * 2

local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local LayoutOrderIterator = require(Plugin.Src.Util.LayoutOrderIterator)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local deepCopy = require(Plugin.Src.Util.deepCopy)

local Framework = require(Plugin.Packages.Framework)
local StyledDialog = Framework.StudioUI.StyledDialog

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TextBox = require(Plugin.Src.Components.TextBox)
local EventNameEntry = require(Plugin.Src.Components.EditEventsDialog.EventNameEntry)
local AddEventEntry = require(Plugin.Src.Components.EditEventsDialog.AddEventEntry)
local FocusedPrompt = require(Plugin.Src.Components.EditEventsDialog.FocusedPrompt)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local EditEventsDialog = Roact.PureComponent:extend("EditEventsDialog")

function EditEventsDialog:init(initialProps)
	local currentEvents = deepCopy(initialProps.Events)

	self.state = {
		CurrentEvents = currentEvents,
		deleteAllName = nil,
		renameAllNames = nil,
	}

	self.onButtonClicked = function(didSave)
		if didSave then
			self.props.OnSaved(self.state.CurrentEvents)
		end
		self.props.OnClose()
	end

	self.onAddEvent = function()
		local events = self.state.CurrentEvents
		local tck = self.props.Tick
		-- Add new events as empty strings so that the text box
		-- automatically focuses for us
		AnimationData.addEvent(events, tck, "", "")
		self:setState({
			CurrentEvents = events,
		})
	end

	self.onRenameEvent = function(name, newName)
		local events = self.state.CurrentEvents
		local tck = self.props.Tick
		if events.Data[tck] and events.Data[tck][name] then
			local value = events.Data[tck][name]
			AnimationData.removeEvent(events, tck, name)
			AnimationData.addEvent(events, tck, newName, value)
		end
		self:setState({
			CurrentEvents = events,
		})
	end

	self.onSetEventValue = function(name, newValue)
		local events = self.state.CurrentEvents
		local tck = self.props.Tick
		AnimationData.setEventValue(events, tck, name, newValue)
		self:setState({
			CurrentEvents = events,
		})
	end

	self.onDeleteEvent = function(name)
		local events = self.state.CurrentEvents
		local tck = self.props.Tick
		AnimationData.removeEvent(events, tck, name)
		self:setState({
			CurrentEvents = events,
		})
	end

	self.onDeleteAllEvents = function(name)
		local events = self.state.CurrentEvents
		for tck, event in pairs(events.Data) do
			if event[name] then
				AnimationData.removeEvent(events, tck, name)
			end
		end
		self:setState({
			CurrentEvents = events,
		})
	end

	self.onRenameAllEvents = function(name, newName)
		local events = self.state.CurrentEvents
		for tck, event in pairs(events.Data) do
			if event[name] then
				local value = event[name]
				AnimationData.removeEvent(events, tck, name)
				AnimationData.addEvent(events, tck, newName, value)
			end
		end
		self:setState({
			CurrentEvents = events,
		})
	end

	self.showDeleteAllPrompt = function(name)
		self:setState({
			deleteAllName = name,
		})
	end

	self.hideDeleteAllPrompt = function()
		self:setState({
			deleteAllName = Roact.None,
		})
	end

	self.showRenameAllPrompt = function(name, newName)
		self:setState({
			renameAllNames = {
				Name = name,
				NewName = newName,
			},
		})
	end

	self.hideRenameAllPrompt = function()
		self:setState({
			renameAllNames = Roact.None,
		})
	end

	self.getUnusedEvents = function(tck)
		local unusedEvents = {}
		local currentEvents = self.state.CurrentEvents
		for _, event in pairs(currentEvents.Data) do
			for name, _ in pairs(event) do
				unusedEvents[name] = true
			end
		end
		if currentEvents.Data[tck] then
			for name, _ in pairs(currentEvents.Data[tck]) do
				unusedEvents[name] = nil
			end
		end
		local names = Cryo.Dictionary.keys(unusedEvents)
		table.sort(names)
		return names
	end
end

function EditEventsDialog:didMount()
	self.props.Mouse:__resetCursor()
end

-- Makes a TextLabel with the props we want
function EditEventsDialog:makeText(theme, text, color, center)
	return Roact.createElement("TextLabel", {
		LayoutOrder = 0,
		Size = UDim2.new(0, COLUMN_WIDTH, 0, ROW_HEIGHT),
		Text = text,
		TextColor3 = color or theme.dialogTheme.textColor,
		Font = theme.font,
		TextSize = theme.dialogTheme.textSize,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, center and CENTER_PADDING or EDGE_PADDING),
			PaddingRight = UDim.new(0, center and EDGE_PADDING or CENTER_PADDING),
		}),
	})
end

function EditEventsDialog:addTitleRow(theme, localization)
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, COLUMN_WIDTH * 2, 0, ROW_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = self.layout:getNextOrder(),
	}, {
		-- UITableLayout expects numerically named elements as columns.
		-- I tried with named values and LayoutOrder, but it did not sort correctly.
		-- EventName
		[1] = self:makeText(theme, localization:getText("Title", "EventName")),

		-- Parameter
		[2] = self:makeText(theme, localization:getText("Title", "Parameter"), nil, true),
	})
end

function EditEventsDialog:addEventRow(theme, name, value, unusedEvents)
	local nextLayout = self.layout:getNextOrder()
	local backgroundColor = theme.trackTheme.shadedBackgroundColor

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, COLUMN_WIDTH * 2, 0, ROW_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = nextLayout,
	}, {
		-- UITableLayout expects numerically named elements as columns.
		-- EventName
		[1] = Roact.createElement(EventNameEntry, {
			Size = UDim2.new(0, COLUMN_WIDTH, 0, ROW_HEIGHT),
			Name = name,
			PaddingLeft = UDim.new(0, EDGE_PADDING),
			PaddingRight = UDim.new(0, CENTER_PADDING),
			OnDeleteEvent = self.onDeleteEvent,
			OnDeleteAllEvents = self.showDeleteAllPrompt,
			UnusedEvents = unusedEvents,
			OnRenameEvent = function(name, newName)
				if name == "" then
					self.onRenameEvent(name, newName)
				elseif name ~= newName then
					self.showRenameAllPrompt(name, newName)
				end
			end,
		}),

		-- Parameter
		[2] = Roact.createElement("Frame", {
			Size = UDim2.new(0, COLUMN_WIDTH, 0, ROW_HEIGHT),
			BackgroundColor3 = backgroundColor,
			BorderColor3 = theme.borderColor,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, CENTER_PADDING),
				PaddingRight = UDim.new(0, EDGE_PADDING),
				PaddingTop = UDim.new(0, 2),
				PaddingBottom = UDim.new(0, 2),
			}),

			TextBox = Roact.createElement(TextBox, {
				Size = UDim2.new(1, 0, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = value,
				ClearTextOnFocus = false,
				FocusChanged = function(rbx, focused)
					if not focused then
						self.onSetEventValue(name, rbx.Text)
					end
				end,
			}),
		}),
	})
end

function EditEventsDialog:addNewEventRow(theme, localization)
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, COLUMN_WIDTH * 2, 0, ROW_HEIGHT),
		BorderColor3 = theme.borderColor,
		BackgroundColor3 = theme.backgroundColor,
		LayoutOrder = self.layout:getNextOrder(),
	}, {
		AddEventEntry = Roact.createElement(AddEventEntry, {
			Size = UDim2.new(0, COLUMN_WIDTH, 0, ROW_HEIGHT),
			PaddingLeft = UDim.new(0, EDGE_PADDING),
			PaddingRight = UDim.new(0, CENTER_PADDING),
			OnAddEvent = self.onAddEvent,
		}),
	})
end

function EditEventsDialog:renderEvents(theme, contents)
	local props = self.props
	local state = self.state
	local tck = props.Tick
	local events = state.CurrentEvents
	local innerHeight = MIN_INNER_HEIGHT

	if events and events.Data and events.Data[tck] then
		local unusedEvents = self.getUnusedEvents(tck)
		local keys = Cryo.Dictionary.keys(events.Data[tck])
		-- Sort alphabetically but leave empty strings at the end,
		-- so that new events always show up at the bottom.
		table.sort(keys, function(key1, key2)
			if key1 == "" then
				return false
			elseif key2 == "" then
				return true
			else
				return key1 < key2
			end
		end)
		for _, key in ipairs(keys) do
			local value = events.Data[tck][key]
			contents["Event_" .. key] = self:addEventRow(theme, key, value, unusedEvents)
			innerHeight = innerHeight + ROW_HEIGHT
		end
	end

	return innerHeight
end

function EditEventsDialog:renderDeleteAllPrompt(theme, localization)
	local state = self.state
	local name = state.deleteAllName
	local style = theme.button

	return Roact.createElement(FocusedPrompt, {
		Buttons = {
			{ Key = false, Text = localization:getText("Dialog", "No"), Style = "Round" },
			{ Key = true, Text = localization:getText("Dialog", "Yes"), Style = "RoundPrimary" },
		},
		PromptText = localization:getText("Dialog", "DeleteAllPrompt_Migrated", { name = name }),
		OnButtonClicked = function(doDeleteAll)
			if doDeleteAll then
				self.onDeleteAllEvents(name)
			end
			self.hideDeleteAllPrompt()
		end,
		OnClose = self.hideDeleteAllPrompt,
	})
end

function EditEventsDialog:renderRenameAllPrompt(theme, localization)
	local state = self.state
	local name = state.renameAllNames.Name
	local newName = state.renameAllNames.NewName

	return Roact.createElement(FocusedPrompt, {
		Buttons = {
			{ Key = false, Text = localization:getText("Dialog", "ChangeThis"), Style = "Round" },
			{ Key = true, Text = localization:getText("Dialog", "ChangeAll"), Style = "Round" },
		},
		PromptText = localization:getText("Dialog", "RenameAllPrompt_Migrated", { name = name, newName = newName }),
		OnButtonClicked = function(doRenameAll)
			if doRenameAll then
				self.onRenameAllEvents(name, newName)
			else
				self.onRenameEvent(name, newName)
			end
			self.hideRenameAllPrompt()
		end,
		OnClose = self.hideRenameAllPrompt,
	})
end

function EditEventsDialog:render()
	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
	local localization = self.props.Localization
	self.layout = LayoutOrderIterator.new()
	local props = self.props
	local state = self.state
	local dialogTheme = theme.dialogTheme
	local style = theme.button
	local showDeleteAllPrompt = state.deleteAllName ~= nil
	local showRenameAllPrompt = state.renameAllNames ~= nil

	local buttons = {
		{ Key = false, Text = localization:getText("Dialog", "Cancel"), Style = "Round" },
		{ Key = true, Text = localization:getText("Dialog", "Save"), Style = "RoundPrimary" },
	}

	local contents = {
		Layout = Roact.createElement("UITableLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillEmptySpaceColumns = true,
		}),
	}

	contents.TitleRow = self:addTitleRow(theme, localization)
	local innerHeight = self:renderEvents(theme, contents)
	contents.AddNew = self:addNewEventRow(theme, localization)

	if showDeleteAllPrompt then
		contents.DeleteAllPrompt = self:renderDeleteAllPrompt(theme, localization)
	elseif showRenameAllPrompt then
		contents.RenameAllPrompt = self:renderRenameAllPrompt(theme, localization)
	end

	local defaultSize = Vector2.new(WIDTH, math.max(innerHeight, DEFAULT_INNER_HEIGHT) + PADDING_HEIGHT)

	return Roact.createElement(StyledDialog, {
		Size = defaultSize,
		MinContentSize = defaultSize,
		TextSize = dialogTheme.textSize,
		Resizable = true,
		Buttons = buttons,
		OnButtonPressed = self.onButtonClicked,
		OnClose = props.OnClose,
		BorderPadding = BORDER_PADDING,
		ButtonPadding = Constants.PROMPT_BUTTON_PADDING,
		ButtonHeight = Constants.PROMPT_BUTTON_SIZE.Y,
		ButtonWidth = Constants.PROMPT_BUTTON_SIZE.X,
		Title = localization:getText("Title", "EditEvents"),
	}, {
		Container = Roact.createElement("ScrollingFrame", {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.backgroundColor,
			Size = UDim2.new(1, 0, 1, -BOTTOM_PADDING),
			ScrollBarThickness = 8,
			CanvasSize = UDim2.new(0, 0, 0, innerHeight),
		}, contents),
	})
end

EditEventsDialog = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(EditEventsDialog)

return EditEventsDialog
