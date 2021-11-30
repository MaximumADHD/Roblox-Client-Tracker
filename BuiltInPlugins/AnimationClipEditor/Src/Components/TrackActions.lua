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
local FFlagDumpTrackMenu = game:DefineFastFlag("ACEDEBUGDumpTrackMenu", false)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local DeleteTrack = require(Plugin.Src.Thunks.DeleteTrack)
local ClearTrack = require(Plugin.Src.Thunks.ClearTrack)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

local TrackActions = Roact.PureComponent:extend("TrackActions")

function TrackActions:makeMenuActions(isTopLevel)
	local pluginActions = self.props.PluginActions
	local deleteAction = isTopLevel and "DeleteTrack" or "ClearTrack"

	local actions = {
		pluginActions:get("AddKeyframe"),
		pluginActions:get(GetFFlagChannelAnimations() and deleteAction or "DeleteTrack"),
	}

	return actions
end

function TrackActions:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)

		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function TrackActions:didMount()
	local actions = self.props.PluginActions
	self.Actions = {}
	self.Connections = {}

	self:addAction(actions:get("DeleteTrack"), function()
		local props = self.props
		local trackName
		if GetFFlagChannelAnimations() then
			trackName = props.Path[1]
		else
			trackName = props.TrackName
		end
		props.DeleteTrack(trackName, props.Analytics)
	end)

	self:addAction(actions:get("ClearTrack"), function()
		local props = self.props
		local path = props.Path
		local instanceName = props.InstanceName
		props.ClearTrack(instanceName, path, props.Analytics)
	end)

	self:addAction(actions:get("AddKeyframe"), function()
		local props = self.props
		local playhead = props.Playhead
		local trackType = props.TrackType
		local instanceName = props.InstanceName
		local animationData = props.AnimationData
		local isChannelAnimation = props.IsChannelAnimation

		if GetFFlagChannelAnimations() then
			local path = props.Path

			local value
			local leftSlope, rightSlope
			local interpolationMode = Enum.KeyInterpolationMode.Cubic

			if instanceName and path then
				if isChannelAnimation then
					TrackUtils.traverseComponents(trackType, function(componentType, relPath)
						local componentPath = Cryo.List.join(path, relPath)
						local track = AnimationData.getTrack(animationData, instanceName, componentPath)
						if track and track.Keyframes then
							value = KeyframeUtils.getValue(track, playhead)
							-- Use the same interpolation mode as the previous key, if any
							local prevKeyframe = TrackUtils.findPreviousKeyframe(track, playhead)
							if prevKeyframe then
								interpolationMode = prevKeyframe.InterpolationMode
								if interpolationMode == Enum.KeyInterpolationMode.Cubic then
									leftSlope, rightSlope = KeyframeUtils.getSlopes(track, playhead)
								end
							end
						else
							value = KeyframeUtils.getDefaultValue(componentType)
						end

						local keyframeData = {
							Value = value,
							InterpolationMode = interpolationMode,
							LeftSlope = leftSlope,
							RightSlope = rightSlope
						}
						props.AddKeyframe(instanceName, componentPath, componentType, playhead, keyframeData, props.Analytics)
					end)
				else
					local track = AnimationData.getTrack(animationData, instanceName, path)
					if track and track.Keyframes then
						value = KeyframeUtils.getValue(track, playhead)
					else
						value = KeyframeUtils.getDefaultValue(trackType)
					end
					local keyframeData = {
						Value = value,
						EasingStyle = Enum.PoseEasingStyle.Linear,
						EasingDirection = Enum.PoseEasingDirection.In
					}
					props.AddKeyframe(instanceName, path, trackType, playhead, keyframeData, props.Analytics)
				end
			end
		else
			local trackName = props.TrackName

			if instanceName and trackName then
				local instance = animationData.Instances[instanceName]
				local track = instance.Tracks[trackName]
				local newValue
				if track and track.Keyframes then
					newValue = KeyframeUtils:getValue(track, playhead)
				else
					if GetFFlagFacialAnimationSupport() then
						newValue = TrackUtils.getDefaultValueByType(trackType)
					else
						newValue = TrackUtils.getDefaultValue(track)
					end
				end
				if GetFFlagFacialAnimationSupport() then
					props.AddKeyframe_deprecated2(instanceName, trackName, trackType, playhead, newValue, props.Analytics)
				else
					props.AddKeyframe_deprecated(instanceName, trackName, playhead, newValue, props.Analytics)
				end
			end
		end
	end)
end

function TrackActions:render()
	local props = self.props
	local showMenu = props.ShowMenu
	local path = props.Path
	local trackName = props.TrackName
	local instanceName = props.InstanceName
	local animationData = props.AnimationData
	local playhead = props.Playhead

	local actions = self.Actions
	local pluginActions = self.props.PluginActions
	local isChannelAnimation = self.props.IsChannelAnimation

	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if GetFFlagChannelAnimations() then
			if path and instanceName then
				local track = AnimationData.getTrack(animationData, instanceName, path)
				local enabled

				if not isChannelAnimation then
					enabled = not (track and track.Data and track.Data[playhead])
				elseif not track then
					enabled = true
				else
					local compInfo = TrackUtils.getComponentsInfo(track, playhead)
					enabled = not compInfo[playhead] or not compInfo[playhead].Complete
				end

				pluginActions:get("AddKeyframe").Enabled = enabled
			end
		else
			if trackName and instanceName then
				local instance = animationData.Instances[instanceName]
				local track = instance.Tracks[trackName]
				if not (track and track.Data and track.Data[playhead]) then
					pluginActions:get("AddKeyframe").Enabled = true
				end
			end
		end

		pluginActions:get("DeleteTrack").Enabled = true
		if GetFFlagChannelAnimations() then
			pluginActions:get("ClearTrack").Enabled = true
		end
	end

	local topLevelTrack = not isChannelAnimation or (path ~= nil and #path <= 1)
	local menuActions = self:makeMenuActions(topLevelTrack)

	if FFlagDumpTrackMenu then
		table.insert(menuActions, {
			Name = "Dump track data",
			ItemSelected = function()
				local instance = animationData.Instances[instanceName]
				trackName = trackName or path[1]
				local track = instance.Tracks[trackName]
				local dumpTable = require(Plugin.Src.Util.Debug.dumpTable)
				dumpTable(track)
			end
		})

		table.insert(menuActions, {
			Name = "Dump track as CSV",
			ItemSelected = function()
				local dumpTrack = require(Plugin.Src.Util.Debug.dumpTrack)
				local instance = animationData.Instances[instanceName]
				trackName = trackName or path[1]
				local track = instance.Tracks[trackName]
				dumpTrack(track, trackName)
			end
		})
	end

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = menuActions,
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


TrackActions = withContext({
	PluginActions = ContextServices.PluginActions,
	Analytics = ContextServices.Analytics,
})(TrackActions)


local function mapStateToProps(state, props)
	local status = state.Status

	return {
		AnimationData = state.AnimationData,
		TrackName = status.RightClickContextInfo.TrackName,
		Path = status.RightClickContextInfo.Path,
		TrackType = status.RightClickContextInfo.TrackType,
		InstanceName = status.RightClickContextInfo.InstanceName,
		Playhead = status.Playhead,
	}
end

local function mapDispatchToProps(dispatch)
	return{
		DeleteTrack = function(trackName, analytics)
			dispatch(AddWaypoint())
			dispatch(DeleteTrack(trackName, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		ClearTrack = function(instance, path, analytics)
			dispatch(AddWaypoint())
			dispatch(ClearTrack(instance, path, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		AddKeyframe = function(instance, path, trackType, tick, keyframeData, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, path, trackType, tick, keyframeData, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		-- Remove when GetFFlagChannelAnimations() is retired
		AddKeyframe_deprecated2 = function(instance, trackName, trackType, tick, value, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, trackName, trackType, tick, value, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() is retired
		AddKeyframe_deprecated = function(instance, trackName, tick, value, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, trackName, tick, value, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TrackActions)