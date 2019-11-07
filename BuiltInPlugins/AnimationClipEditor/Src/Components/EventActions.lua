--[[
	Handles event actions and the context menu.
	When this component renders, it determines which actions should be enabled.
	This allows keyboard shortcuts to work only when they provide meaningful action.
	When the ShowMenu prop is true, this component also spawns a context menu
	to show the actions controlled by this component. Disabled actions will appear
	greyed out in this menu.

	Props:
		bool ShowMenu = Whether to show the context menu.
		function OnMenuOpened() = A callback for when the context menu is opened.
		function OnEditEvents(frame) = A callback for when the user wants to edit the events
			at the given frame.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local ActionContext = require(Plugin.Src.Context.ActionContext)
local getActions = ActionContext.getActions

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local PasteEvents = require(Plugin.Src.Thunks.Events.PasteEvents)
local CopySelectedEvents = require(Plugin.Src.Thunks.Events.CopySelectedEvents)
local DeleteSelectedEvents = require(Plugin.Src.Thunks.Events.DeleteSelectedEvents)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)

local FFlagAnimEditorFixBackspaceOnMac = require(Plugin.LuaFlags.GetFFlagAnimEditorFixBackspaceOnMac)

local EventActions = Roact.PureComponent:extend("EventActions")

function EventActions:makeMenuActions()
	local pluginActions = getActions(self)
	local props = self.props

	local actions = {
		pluginActions.DeleteEvents,
		Constants.MENU_SEPARATOR,
		pluginActions.CutEvents,
		pluginActions.CopyEvents,
		pluginActions.PasteEvents,
	}

	if props.OnEvent then
		table.insert(actions, 1, pluginActions.EditEvents)
	else
		table.insert(actions, 1, pluginActions.AddEvent)
	end

	return actions
end

function EventActions:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:connect(func))
	end
end

function EventActions:init(initialProps)
	local actions = getActions(self)
	self.Connections = {}
	self.Actions = {}

	self:addAction(actions.EditEvents, function()
		local props = self.props
		local frame = props.Frame
		props.OnEditEvents(frame)
	end)

	self:addAction(actions.PasteEvents, function()
		local props = self.props
		local frame = props.Frame or props.Playhead
		props.PasteEvents(frame)
	end)

	self:addAction(actions.CutEvents, function()
		local props = self.props
		props.CopySelectedEvents()
		props.DeleteSelectedEvents()
	end)

	self:addAction(actions.CopyEvents, initialProps.CopySelectedEvents)
	self:addAction(actions.DeleteEvents, initialProps.DeleteSelectedEvents)

	if FFlagAnimEditorFixBackspaceOnMac() then
		self:addAction(actions.DeleteEventsBackspace, initialProps.DeleteSelectedEvents)
	end
end

function EventActions:render()
	local props = self.props
	local showMenu = props.ShowMenu
	local clipboard = props.Clipboard
	local clipboardType = props.ClipboardType
	local selectedEvents = props.SelectedEvents

	local onMenuOpened = props.OnMenuOpened

	local actions = self.Actions
	local pluginActions = getActions(self)

	if not isEmpty(pluginActions) then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if clipboard and not isEmpty(clipboard)
			and clipboardType == Constants.CLIPBOARD_TYPE.Events then
			pluginActions.PasteEvents.Enabled = true
		end

		if selectedEvents and not isEmpty(selectedEvents) then
			pluginActions.CutEvents.Enabled = true
			pluginActions.CopyEvents.Enabled = true
			pluginActions.DeleteEvents.Enabled = true
			if FFlagAnimEditorFixBackspaceOnMac() then
				pluginActions.DeleteEventsBackspace.Enabled = true
			end
		end
		if props.OnEvent then
			pluginActions.EditEvents.Enabled = true
		end
	end

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = self:makeMenuActions(),
		OnMenuOpened = onMenuOpened,
	}) or nil
end

function EventActions:willUnmount()
	if self.Connections then
		for _, connection in ipairs(self.Connections) do
			connection:Disconnect()
		end
		self.Connections = {}
	end
	if self.Actions then
		for _, action in ipairs(self.Actions) do
			action.Enabled = false
		end
	end
end

local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Clipboard = status.Clipboard,
		ClipboardType = status.ClipboardType,
		SelectedEvents = status.SelectedEvents,
		Playhead = status.Playhead,
		OnEvent = status.RightClickContextInfo.OnEvent,
		Frame = status.RightClickContextInfo.Frame,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		DeleteSelectedEvents = function()
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedEvents())
			dispatch(SetRightClickContextInfo({}))
		end,

		CopySelectedEvents = function()
			dispatch(CopySelectedEvents())
			dispatch(SetRightClickContextInfo({}))
		end,

		PasteEvents = function(frame)
			dispatch(AddWaypoint())
			dispatch(PasteEvents(frame))
			dispatch(SetRightClickContextInfo({}))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EventActions)