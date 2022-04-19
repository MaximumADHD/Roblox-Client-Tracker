--!strict
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
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local ClearTrack = require(Plugin.Src.Thunks.ClearTrack)
local ConvertTrack = require(Plugin.Src.Thunks.ConvertTrack)
local DeleteTrack = require(Plugin.Src.Thunks.DeleteTrack)
local SetTrackEulerAnglesOrder = require(Plugin.Src.Thunks.SetTrackEulerAnglesOrder)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SplitTrack = require(Plugin.Src.Thunks.SplitTrack)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagQuaternionChannels = require(Plugin.LuaFlags.GetFFlagQuaternionChannels)
local GetFFlagQuaternionsUI = require(Plugin.LuaFlags.GetFFlagQuaternionsUI)
local GetFFlagEulerFromPartTrack = require(Plugin.LuaFlags.GetFFlagEulerFromPartTrack)
local GetFFlagEulerAnglesOrder = require(Plugin.LuaFlags.GetFFlagEulerAnglesOrder)

export type Props = {
	-- State/Context
	Analytics: any,
	AnimationData: AnimationData.AnimationData,
	DefaultEulerAnglesOrder: string,
	InstanceName: string,
	Path: PathUtils.Path,
	Playhead: number,
	PluginActions: any,
	RotationType: string,
	TrackName: string,
	TrackType: string,

	-- Actions/Thunks
	AddKeyframe: (string, PathUtils.Path, string, any, any, any) -> (),
	AddKeyframe_deprecated2: (string, string, string, number, any, any) -> (),
	AddKeyframe_deprecated: (string, string, number, any, any) -> (),
	ClearTrack: (string, PathUtils.Path, any) -> (),
	ConvertTrack: (string, PathUtils.Path, string, any) -> (),
	DeleteTrack: (string, any) -> (),
	SetTrackEulerAnglesOrder: (string, PathUtils.Path, Enum.RotationOrder) -> (),
	SplitTrack: (string, PathUtils.Path, string, number, any) -> (),

	-- Properties
	ShowMenu: boolean,

	OnMenuOpened: () -> (),
}

local EULER_ANGLES_ORDER: {EnumItem} = {
	Enum.RotationOrder.XYZ,
	Enum.RotationOrder.XZY,
	Enum.RotationOrder.YXZ,
	Enum.RotationOrder.YZX,
	Enum.RotationOrder.ZXY,
	Enum.RotationOrder.ZYX,
}

local TrackActions = Roact.PureComponent:extend("TrackActions")

function TrackActions:makeEulerAnglesOrderSubMenu(): ContextMenu.MenuItem
	local localization = self.props.Localization
	local animationData = self.props.AnimationData
	local instanceName = self.props.InstanceName
	local path = self.props.Path

	local track = AnimationData.getTrack(animationData, instanceName, path)
	return {
		Name = localization:getText("ContextMenu", "EulerAnglesOrder"),
		Items = EULER_ANGLES_ORDER,
		CurrentValue = track.EulerAnglesOrder.Value,
		ItemSelected = function(eulerAngleOrder)
			self.props.SetTrackEulerAnglesOrder(
				instanceName, path, eulerAngleOrder
			)
		end,
	}
end

function TrackActions:makeMenuActions(isTopLevel: boolean, showEulerConversion: boolean): {PluginAction}
	local props = self.props
	local pluginActions = props.PluginActions
	local isChannelAnimation = props.IsChannelAnimation
	local path = props.Path
	local trackType = props.TrackType
	local animationData = props.AnimationData
	local instanceName = props.InstanceName

	if GetFFlagEulerAnglesOrder() then
		local track = AnimationData.getTrack(animationData, instanceName, path)
		if track then
			showEulerConversion = track.Type == Constants.TRACK_TYPES.Quaternion or
				(track.Type == Constants.TRACK_TYPES.CFrame and TrackUtils.getRotationType(track) == Constants.TRACK_TYPES.Quaternion)
		end
	end

	if GetFFlagQuaternionsUI() then
		isTopLevel = not isChannelAnimation or (path ~= nil and #path <= 1)
	end

	local deleteAction = isTopLevel and "DeleteTrack" or "ClearTrack"

	local actions = {
		pluginActions:get("AddKeyframe"),
		pluginActions:get(GetFFlagChannelAnimations() and deleteAction or "DeleteTrack"),
	}

	if not GetFFlagEulerAnglesOrder() then
		if GetFFlagQuaternionsUI() and isChannelAnimation then
			if (not GetFFlagEulerFromPartTrack() and trackType == Constants.TRACK_TYPES.Quaternion) or
				(GetFFlagEulerFromPartTrack() and showEulerConversion) then
				table.insert(actions, Constants.MENU_SEPARATOR)
				table.insert(actions, pluginActions:get("ConvertToEulerAngles"))
			end
		end
	else
		local separator = false
		if GetFFlagQuaternionsUI() and isChannelAnimation then
			if (not GetFFlagEulerFromPartTrack() and trackType == Constants.TRACK_TYPES.Quaternion) or
				(GetFFlagEulerFromPartTrack() and showEulerConversion) then
				table.insert(actions, Constants.MENU_SEPARATOR)
				table.insert(actions, pluginActions:get("ConvertToEulerAngles"))
				separator = true
			end
		end
		if trackType == Constants.TRACK_TYPES.EulerAngles then
			if not separator then
				table.insert(actions, Constants.MENU_SEPARATOR)
			end
			table.insert(actions, self:makeEulerAnglesOrderSubMenu())
		end
	end
	return actions
end

function TrackActions:addAction(action: PluginAction?, func: () -> ()): ()
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)

		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function TrackActions:didMount(): ()
	local actions = self.props.PluginActions
	self.Actions = {}
	self.Connections = {}

	self:addAction(actions:get("DeleteTrack"), function(): ()
		local props = self.props
		local trackName
		if GetFFlagChannelAnimations() then
			trackName = props.Path[1]
		else
			trackName = props.TrackName
		end
		props.DeleteTrack(trackName, props.Analytics)
	end)

	self:addAction(actions:get("ClearTrack"), function(): ()
		local props = self.props
		local path = props.Path
		local instanceName = props.InstanceName
		props.ClearTrack(instanceName, path, props.Analytics)
	end)

	self:addAction(actions:get("AddKeyframe"), function(): ()
		local props = self.props
		local playhead = props.Playhead
		local trackType = props.TrackType
		local rotationType = props.RotationType
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
						if GetFFlagQuaternionChannels() then
							props.SplitTrack(instanceName, componentPath, componentType, playhead, props.Analytics)
						else
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
						end
					end, rotationType)
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
					newValue = KeyframeUtils.getValue(track, playhead)
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

	if GetFFlagQuaternionsUI() then
		self:addAction(actions:get("ConvertToEulerAngles"), function()
			local props = self.props
			local path = props.Path
			local instanceName = props.InstanceName
			local trackType = props.TrackType
			local animationData = props.AnimationData

			if GetFFlagEulerFromPartTrack() then
				-- If the track is not a quaternion track, try to find a quaternion descendant.
				if trackType == Constants.TRACK_TYPES.CFrame then
					table.insert(path, Constants.PROPERTY_KEYS.Rotation)
					local track = AnimationData.getTrack(animationData, instanceName, path)
					if track.Type ~= Constants.TRACK_TYPES.Quaternion then
						return
					end
				end
			end
			props.ConvertTrack(instanceName, path, Constants.TRACK_TYPES.EulerAngles, props.Analytics)
		end)
	end
end

function TrackActions:render(): (any?)
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
	local showEulerConversion = false

	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if GetFFlagChannelAnimations() then
			if path and instanceName then
				local track = AnimationData.getTrack(animationData, instanceName, path)
				if not GetFFlagEulerAnglesOrder() then
					showEulerConversion = track.Type == Constants.TRACK_TYPES.Quaternion or
						(track.Type == Constants.TRACK_TYPES.CFrame and TrackUtils.getRotationType(track) == Constants.TRACK_TYPES.Quaternion)
				end
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
		if isChannelAnimation and GetFFlagQuaternionsUI() then
			pluginActions:get("ConvertToEulerAngles").Enabled = true
		end
	end

	-- topLevelTrack is not needed anymore if GetFFlagQuaternionsUI is ON
	local topLevelTrack = not isChannelAnimation or (path ~= nil and #path <= 1)
	local menuActions
	if GetFFlagEulerAnglesOrder() then
		menuActions = self:makeMenuActions()
	else
	 	menuActions = self:makeMenuActions(topLevelTrack, showEulerConversion)
	end

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

				if GetFFlagEulerAnglesOrder() then
					local eulerAnglesOrder = TrackUtils.getEulerAnglesOrder(track)
					dumpTrack(track, trackName,
						eulerAnglesOrder or props.DefaultEulerAnglesOrder)
				else
					dumpTrack(track, trackName, props.DefaultEulerAnglesOrder)
				end
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
	Localization = ContextServices.Localization,
	PluginActions = ContextServices.PluginActions,
	Analytics = ContextServices.Analytics,
})(TrackActions)

local function mapStateToProps(state): {[string]: any}
	local status = state.Status

	return {
		AnimationData = state.AnimationData,
		DefaultEulerAnglesOrder = status.DefaultEulerAnglesOrder,
		InstanceName = status.RightClickContextInfo.InstanceName,
		Path = status.RightClickContextInfo.Path,
		Playhead = status.Playhead,
		RotationType = status.RightClickContextInfo.RotationType,
		TrackName = status.RightClickContextInfo.TrackName,
		TrackType = status.RightClickContextInfo.TrackType,
	}
end

local function mapDispatchToProps(dispatch): {[string]: any}
	return{
		AddKeyframe = function(instance, path, trackType, tck, keyframeData, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, path, trackType, tck, keyframeData, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		-- Remove when GetFFlagChannelAnimations() is retired
		AddKeyframe_deprecated2 = function(instance, trackName, trackType, tck, value, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, trackName, trackType, tck, value, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() is retired
		AddKeyframe_deprecated = function(instance, trackName, tck, value, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, trackName, tck, value, analytics))	-- Luau warning is fine since signature changes with flags
			dispatch(SetRightClickContextInfo({}))
		end,

		ClearTrack = function(instance, path, analytics)
			dispatch(AddWaypoint())
			dispatch(ClearTrack(instance, path, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		ConvertTrack = function(instance, path, trackType, analytics)
			dispatch(AddWaypoint())
			dispatch(ConvertTrack(instance, path, trackType, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		DeleteTrack = function(trackName, analytics)
			dispatch(AddWaypoint())
			dispatch(DeleteTrack(trackName, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		SetTrackEulerAnglesOrder = function(instanceName: string, path: PathUtils.Path, eulerAnglesOrder: Enum.RotationOrder): ()
			dispatch(AddWaypoint())
			dispatch(SetTrackEulerAnglesOrder(instanceName, path, eulerAnglesOrder))
			dispatch(SetRightClickContextInfo({}))
		end,

		SplitTrack = function(instance, path, trackType, tck, analytics)
			dispatch(AddWaypoint())
			dispatch(SplitTrack(instance, path, trackType, tck, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TrackActions)
