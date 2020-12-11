--[[
	Handles track actions and the track menu.
	When this component renders, it determines which actions should be enabled.
	This allows keyboard shortcuts to work only when they provide meaningful action.
	When the ShowMenu prop is true, this component also spawns a context menu
	to show the actions controlled by this component. Disabled actions will appear
	greyed out in this menu.

	Props:
		bool ShowMenu = Whether to show the context menu.
		function OnMenuOpened() = A callback for when the context menu has successfully opened.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local isEmpty = require(Plugin.SrcDeprecated.Util.isEmpty)

local ContextMenu = require(Plugin.SrcDeprecated.Components.ContextMenu)

local KeyframeUtils = require(Plugin.SrcDeprecated.Util.KeyframeUtils)
local TrackUtils = require(Plugin.SrcDeprecated.Util.TrackUtils)
local ActionContext = require(Plugin.SrcDeprecated.Context.ActionContext)
local getActions = ActionContext.getActions

local AddWaypoint = require(Plugin.SrcDeprecated.Thunks.History.AddWaypoint)
local AddKeyframe = require(Plugin.SrcDeprecated.Thunks.AddKeyframe)
local DeleteTrack = require(Plugin.SrcDeprecated.Thunks.DeleteTrack)
local SetRightClickContextInfo = require(Plugin.SrcDeprecated.Actions.SetRightClickContextInfo)

local TrackActions = Roact.PureComponent:extend("TrackActions")

function TrackActions:makeMenuActions()
	local pluginActions = getActions(self)
	local actions = {
		pluginActions.AddKeyframe,
		pluginActions.DeleteTrack,
	}

	return actions
end

function TrackActions:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:connect(func))
	end
end

function TrackActions:init()
	local actions = getActions(self)
	self.Actions = {}
	self.Connections = {}

	self:addAction(actions.DeleteTrack, function()
		local props = self.props
		local trackName = props.TrackName
		props.DeleteTrack(trackName)
	end)

	self:addAction(actions.AddKeyframe, function()
		local props = self.props
		local playhead = props.Playhead
		local trackName = props.TrackName
		local instanceName = props.InstanceName

		if instanceName and trackName then
			local instance = props.AnimationData.Instances[instanceName]
			local track = instance.Tracks[trackName]
			local newValue
			if track and track.Keyframes then
				newValue = KeyframeUtils:getValue(track, playhead)
			else
				newValue = TrackUtils.getDefaultValue(track)
			end
			props.AddKeyframe(instanceName, trackName, playhead, newValue)
		end
	end)
end

function TrackActions:render()
	local props = self.props
	local showMenu = props.ShowMenu
	local trackName = props.TrackName
	local instanceName = props.InstanceName
	local animationData = props.AnimationData
	local playhead = props.Playhead

	local actions = self.Actions
	local pluginActions = getActions(self)

	if not isEmpty(pluginActions) then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if trackName and instanceName then
			local instance = animationData.Instances[instanceName]
			local track = instance.Tracks[trackName]
			if not (track and track.Data and track.Data[playhead]) then
				pluginActions.AddKeyframe.Enabled = true
			end
		end

		pluginActions.DeleteTrack.Enabled = true
	end

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = self:makeMenuActions(),
		OnMenuOpened = props.OnMenuOpened,
	}) or nil
end

function TrackActions:willUnmount()
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
		AnimationData = state.AnimationData,
		TrackName = status.RightClickContextInfo.TrackName,
		InstanceName = status.RightClickContextInfo.InstanceName,
		Playhead = status.Playhead,
	}
end

local function mapDispatchToProps(dispatch)
	return{
		DeleteTrack = function(trackName)
			dispatch(AddWaypoint())
			dispatch(DeleteTrack(trackName))
			dispatch(SetRightClickContextInfo({}))
		end,

		AddKeyframe = function(instance, track, frame, value)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, track, frame, value))
			dispatch(SetRightClickContextInfo({}))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TrackActions)