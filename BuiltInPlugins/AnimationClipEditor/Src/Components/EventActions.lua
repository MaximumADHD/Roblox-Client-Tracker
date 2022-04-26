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
		function OnEditEvents(tick) = A callback for when the user wants to edit the events
			at the given tick.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local PasteEvents = require(Plugin.Src.Thunks.Events.PasteEvents)
local CopySelectedEvents = require(Plugin.Src.Thunks.Events.CopySelectedEvents)
local DeleteSelectedEvents = require(Plugin.Src.Thunks.Events.DeleteSelectedEvents)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)

local FFlagAnimEditorFixBackspaceOnMac = require(Plugin.LuaFlags.GetFFlagAnimEditorFixBackspaceOnMac)

local EventActions = Roact.PureComponent:extend("EventActions")

function EventActions:makeMenuActions()
	local pluginActions = self.props.PluginActions
	if pluginActions then
		local props = self.props

		local actions = {
			pluginActions:get("DeleteEvents"),
			Constants.MENU_SEPARATOR,
			pluginActions:get("CutEvents"),
			pluginActions:get("CopyEvents"),
			pluginActions:get("PasteEvents"),
		}

		if props.OnEvent then
			table.insert(actions, 1, pluginActions:get("EditEvents"))
		else
			table.insert(actions, 1, pluginActions:get("AddEvent"))
		end

		return actions
	end
end

function EventActions:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function EventActions:didMount()
	local actions = self.props.PluginActions
	self.Connections = {}
	self.Actions = {}

	self:addAction(actions:get("EditEvents"), function()
		local props = self.props
		local tick = props.Tick
		props.OnEditEvents(tick)
	end)

	self:addAction(actions:get("PasteEvents"), function()
		local props = self.props
		local tick = props.Tick or props.Playhead
		props.PasteEvents(tick)
	end)

	self:addAction(actions:get("CutEvents"), function()
		local props = self.props
		props.CopySelectedEvents()
		props.DeleteSelectedEvents()
	end)

	self:addAction(actions:get("CopyEvents"), self.props.CopySelectedEvents)
	self:addAction(actions:get("DeleteEvents"), self.props.DeleteSelectedEvents)

	if FFlagAnimEditorFixBackspaceOnMac() then
		self:addAction(actions:get("DeleteEventsBackspace"), self.props.DeleteSelectedEvents)
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
	local pluginActions = self.props.PluginActions

	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if clipboard and not isEmpty(clipboard)
			and clipboardType == Constants.CLIPBOARD_TYPE.Events then
			pluginActions:get("PasteEvents").Enabled = true
		end

		if selectedEvents and not isEmpty(selectedEvents) then
			pluginActions:get("CutEvents").Enabled = true
			pluginActions:get("CopyEvents").Enabled = true
			pluginActions:get("DeleteEvents").Enabled = true
			if FFlagAnimEditorFixBackspaceOnMac() then
				pluginActions:get("DeleteEventsBackspace").Enabled = true
			end
		end
		if props.OnEvent then
			pluginActions:get("EditEvents").Enabled = true
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


EventActions = withContext({
	PluginActions = ContextServices.PluginActions,
})(EventActions)



local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Clipboard = status.Clipboard,
		ClipboardType = status.ClipboardType,
		SelectedEvents = status.SelectedEvents,
		Playhead = status.Playhead,
		OnEvent = status.RightClickContextInfo.OnEvent,
		Tick = status.RightClickContextInfo.Tick,
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

		PasteEvents = function(tick)
			dispatch(AddWaypoint())
			dispatch(PasteEvents(tick))
			dispatch(SetRightClickContextInfo({}))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EventActions)