--[[
	Handles timeline actions and the context menu.
	When this component renders, it determines which actions should be enabled.
	This allows keyboard shortcuts to work only when they provide meaningful action.
	When the ShowMenu prop is true, this component also spawns a context menu
	to show the actions controlled by this component. Disabled actions will appear
	greyed out in this menu.

	Props:
		bool ShowMenu = Whether to show the context menu.
		bool MultipleSelected = Whether multiple keyframes are selected.

		function OnMenuOpened() = A callback for when the context menu has successfully opened.
		function OnItemSelected(key, item) = A callback for when the user selects an
			item in one of the submenus to edit a key's Easing info.
		function OnClearTangentsSelected() = A callback to reset tangents and use auto-tangent
			mode on the selected keys
		function OnRenameKeyframe(tick) = A callback for when the user wants to start renaming
			a keyframe in the timeline.
]]

-- TODO: There's a lot of duplicated code here, and the AddKeyframe logic is very similar to what
-- is done in TrackActions.lua. We should factor this out, and share code between both menus

local EASING_STYLE_ORDER = {
	Enum.PoseEasingStyle.Linear,
	Enum.PoseEasingStyle.Constant,
	Enum.PoseEasingStyle.Cubic,
	Enum.PoseEasingStyle.Elastic,
	Enum.PoseEasingStyle.Bounce,
}

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)
local SignalsContext = require(Plugin.Src.Context.Signals)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local PasteKeyframes = require(Plugin.Src.Thunks.PasteKeyframes)
local CopySelectedKeyframes = require(Plugin.Src.Thunks.Selection.CopySelectedKeyframes)
local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
local ResetSelectedKeyframes = require(Plugin.Src.Thunks.Selection.ResetSelectedKeyframes)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local ToggleBoneVisibility = require(Plugin.Src.Thunks.ToggleBoneVisibility)

local SelectAllKeyframes = require(Plugin.Src.Thunks.Selection.SelectAllKeyframes)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SetEventEditingTick = require(Plugin.Src.Actions.SetEventEditingTick)
local SetTool = require	(Plugin.Src.Actions.SetTool)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Undo = require(Plugin.Src.Thunks.History.Undo)
local Redo = require(Plugin.Src.Thunks.History.Redo)

local TogglePlay = require(Plugin.Src.Thunks.Playback.TogglePlay)

local FFlagAnimEditorFixBackspaceOnMac = require(Plugin.LuaFlags.GetFFlagAnimEditorFixBackspaceOnMac)
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")
local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

local TimelineActions = Roact.PureComponent:extend("TimelineActions")

-- Returns the property value shared among all selected keyframes,
-- or nil if any keyframes do not share the same property value.
function TimelineActions:getSharedPropertyValue(key)
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local animationData = props.AnimationData
	local foundMismatch = false

	local sharedPropertyValue = nil
	for instanceName, instance in pairs(selectedKeyframes) do
		local dataInstance = animationData.Instances[instanceName]
		for trackName, selectionTrack in pairs(instance) do
			if GetFFlagChannelAnimations() then
				local dataTrack = dataInstance.Tracks[trackName]
				SelectionUtils.traverse(selectionTrack, dataTrack, function(selectionTrack, dataTrack)
					if not selectionTrack.Selection or not dataTrack.Data or foundMismatch then
						return
					end
					for keyframe, _ in pairs(selectionTrack.Selection) do
						local pose = dataTrack.Data[keyframe]
						if pose then
							if sharedPropertyValue == nil then
								sharedPropertyValue = pose[key]
							elseif sharedPropertyValue ~= pose[key] then
								sharedPropertyValue = nil
								foundMismatch = true -- Immediately bail out when processing the rest of the traversal
								break
							end
						end
					end
				end)
			else
				local keyframes = Cryo.Dictionary.keys(instance[trackName])
				local track = dataInstance.Tracks[trackName]
				for _, keyframe in ipairs(keyframes) do
					if track.Data[keyframe] then
						if sharedPropertyValue == nil then
							sharedPropertyValue = track.Data[keyframe][key]
						elseif sharedPropertyValue ~= track.Data[keyframe][key] then
							sharedPropertyValue = nil
							break
						end
					end
				end
			end
		end
	end
	return sharedPropertyValue and sharedPropertyValue.Value
end

-- Creates a submenu for selecting an enum item.
function TimelineActions:makeSelectionSubMenu(enumKey, dataKey, displayText)
	local props = self.props
	local items

	if enumKey == "PoseEasingStyle" then
		items = EASING_STYLE_ORDER
	elseif GetFFlagChannelAnimations() and enumKey == "KeyInterpolationMode" then
		items = Constants.KEY_INTERPOLATION_MODE_ORDER
	else
		items = Enum[enumKey]:GetEnumItems()
	end

	return {
		Name = displayText,
		Items = items,
		CurrentValue = self:getSharedPropertyValue(dataKey),
		ItemSelected = function(item)
			props.OnItemSelected(dataKey, item)
		end,
	}
end

function TimelineActions:makeMenuActions(localization)
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local summaryKeyframe = props.SummaryKeyframe
	local pluginActions = self.props.PluginActions

	local actions = {
		pluginActions:get("AddKeyframeHere"),
		pluginActions:get("DeleteSelected"),
		Constants.MENU_SEPARATOR,
		pluginActions:get("CutSelected"),
		pluginActions:get("CopySelected"),
		pluginActions:get("PasteKeyframes"),
		Constants.MENU_SEPARATOR,
	}

	if selectedKeyframes and not isEmpty(selectedKeyframes) then
		table.insert(actions, pluginActions:get("ResetSelected"))
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, pluginActions:get("ChangeDuration"))
		-- EasingStyle and EasingDirection customization
		table.insert(actions, Constants.MENU_SEPARATOR)
		if GetFFlagChannelAnimations() and props.IsChannelAnimation then
			table.insert(actions, self:makeSelectionSubMenu("KeyInterpolationMode", "InterpolationMode",
				localization:getText("ContextMenu", "InterpolationMode")))
			table.insert(actions, pluginActions:get("ClearTangents"))
		else
			table.insert(actions, self:makeSelectionSubMenu("PoseEasingStyle", "EasingStyle",
				localization:getText("ContextMenu", "EasingStyle")))
			table.insert(actions, self:makeSelectionSubMenu("PoseEasingDirection", "EasingDirection",
				localization:getText("ContextMenu", "EasingDirection")))
		end
	else
		table.insert(actions, pluginActions:get("AddResetKeyframe"))
	end

	table.insert(actions, Constants.MENU_SEPARATOR)
	table.insert(actions, pluginActions:get("AddEvent"))

	if summaryKeyframe ~= nil then
		table.insert(actions, pluginActions:get("RenameKeyframe"))
	end

	return actions
end

function TimelineActions:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function TimelineActions:didMount()
	local actions = self.props.PluginActions
	self.Connections = {}
	self.Actions = {}

	self:addAction(actions:get("AddKeyframeHere"), function()
		local props = self.props
		local tick = props.Tick
		local trackName = props.TrackName
		local instanceName = props.InstanceName
		local tracks = props.Tracks
		local trackType = props.TrackType
		local path = props.Path
		local animationData = props.AnimationData
		local isChannelAnimation = props.IsChannelAnimation

		local addKeyframe

		if GetFFlagChannelAnimations() then
			addKeyframe = function(instanceName, path)
				-- If the user clicked outside of a track, the trackType is not set
				trackType = trackType or TrackUtils.getTrackTypeFromName(path[1], tracks)
				if isChannelAnimation then
					TrackUtils.traverseComponents(trackType, function(componentType, relPath)
						local componentPath = Cryo.List.join(path, relPath)
						local componentTrack = AnimationData.getTrack(animationData, instanceName, componentPath)
						local value
						local leftSlope, rightSlope
						local interpolationMode = Enum.KeyInterpolationMode.Cubic

						if componentTrack and componentTrack.Keyframes then
							value = KeyframeUtils.getValue(componentTrack, tick)
							local prevKeyframe = TrackUtils.findPreviousKeyframe(componentTrack, tick)
							if prevKeyframe then
								interpolationMode = prevKeyframe.InterpolationMode
								if interpolationMode == Enum.KeyInterpolationMode.Cubic then
									leftSlope, rightSlope = KeyframeUtils.getSlopes(componentTrack, tick)
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
						props.AddKeyframe(instanceName, componentPath, componentType, tick, keyframeData, props.Analytics)
					end)
				else
					local track = AnimationData.getTrack(animationData, instanceName, path)
					local value
					if track and track.Keyframes then
						value = KeyframeUtils.getValue(track, tick)
					else
						value = KeyframeUtils.getDefaultValue(trackType)
					end
					local keyframeData = {
						Value = value,
						EasingStyle = Enum.PoseEasingStyle.Linear,
						EasingDirection = Enum.PoseEasingDirection.In
					}
					props.AddKeyframe(instanceName, path, trackType, tick, keyframeData, props.Analytics)
				end
			end
		else
			addKeyframe = function(instanceName, trackName, track)
				-- The track type is nil when the user is adding a Pose to an empty track.
				-- In that case, use the right click info.
				local trackType = track and track.Type or props.TrackType
				local newValue

				if track and track.Keyframes then
					newValue = KeyframeUtils:getValue(track, tick)
				else
					if GetFFlagFacialAnimationSupport() then
						-- If the type could not be determined by an existing track or by
						-- the right click context, then find it in the open tracks
						trackType = trackType or TrackUtils.getTrackTypeFromName(trackName, tracks)
						newValue = TrackUtils.getDefaultValueByType(trackType)
					else
						newValue = TrackUtils.getDefaultValue(track)
					end
				end
				if GetFFlagFacialAnimationSupport() then
					props.AddKeyframe_deprecated2(instanceName, trackName, trackType, tick, newValue, props.Analytics)
				else
					props.AddKeyframe_deprecated(instanceName, trackName, tick, newValue, props.Analytics)
				end
			end
		end

		if not GetFFlagChannelAnimations() and instanceName and trackName then
			local instance = props.AnimationData.Instances[instanceName]
			local track = instance.Tracks[trackName]
			addKeyframe(instanceName, trackName, track)
		elseif GetFFlagChannelAnimations() and instanceName and path then
			addKeyframe(instanceName, path)
		else
			-- If the user clicked the summary track, add a keyframe for
			-- every currently opened track.
			-- This also happens if the user clicked below the last track (is it desired?)
			for instanceName, instance in pairs(props.AnimationData.Instances) do
				for _, openTrack in pairs(tracks) do
					local trackName = openTrack.Name
					if GetFFlagChannelAnimations() then
						addKeyframe(instanceName, {trackName})
					else
						local track = instance.Tracks[trackName]
						addKeyframe(instanceName, trackName, track)
					end
				end
			end
		end
	end)

	self:addAction(actions:get("AddKeyframeAtScrubber"), function()
		local props = self.props
		local tracks = props.Tracks
		local playhead = props.Playhead
		local selectedTracks = props.SelectedTracks
		local isChannelAnimation = props.IsChannelAnimation

		if selectedTracks then
			for instanceName, instance in pairs(props.AnimationData.Instances) do
				for _, selectedTrack in pairs(selectedTracks) do
					local track = instance.Tracks[selectedTrack]
					if GetFFlagChannelAnimations() then
						if isChannelAnimation then
							TrackUtils.traverseComponents(track.Type, function(componentType, relPath)
								local componentPath = Cryo.List.join({selectedTrack}, relPath)
								local componentTrack = AnimationData.getTrack(props.AnimationData, instanceName, componentPath)
								local value
								local leftSlope, rightSlope
								local interpolationMode = Enum.KeyInterpolationMode.Cubic

								if componentTrack and componentTrack.Keyframes then
									value = KeyframeUtils.getValue(componentTrack, playhead)
									local prevKeyframe = TrackUtils.findPreviousKeyframe(componentTrack, playhead)
									if prevKeyframe then
										interpolationMode = prevKeyframe.InterpolationMode
										if interpolationMode == Enum.KeyInterpolationMode.Cubic then
											leftSlope, rightSlope = KeyframeUtils.getSlopes(componentTrack, playhead)
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
							local value
							if track and track.Keyframes then
								value = KeyframeUtils.getValue(track, playhead)
							else
								value = KeyframeUtils.getDefaultValue(track.Type)
							end
							local keyframeData = {
								Value = value,
								EasingStyle = Enum.PoseEasingStyle.Linear,
								EasingDirection = Enum.PoseEasingDirection.In
							}
							props.AddKeyframe(instanceName, {selectedTrack}, track.Type, playhead, keyframeData, props.Analytics)
						end
					else
						local newValue
						local trackType = track and track.Type

						if track and track.Keyframes then
							newValue = KeyframeUtils:getValue(track, playhead)
						else
							if GetFFlagFacialAnimationSupport() then
								trackType = trackType or TrackUtils.getTrackTypeFromName(selectedTrack, tracks)
								newValue = TrackUtils.getDefaultValueByType(trackType)
							else
								newValue = TrackUtils.getDefaultValue(track)
							end
						end
						if GetFFlagFacialAnimationSupport() then
							props.AddKeyframe_deprecated2(instanceName, selectedTrack, trackType, playhead, newValue, props.Analytics)
						else
							props.AddKeyframe_deprecated(instanceName, selectedTrack, playhead, newValue, props.Analytics)
						end
					end
				end
			end
		end
	end)

	self:addAction(actions:get("AddResetKeyframe"), function()
		local props = self.props
		local tick = props.Tick
		local trackName = props.TrackName
		local instanceName = props.InstanceName
		local tracks = props.Tracks
		local path = props.Path
		local isChannelAnimation = props.IsChannelAnimation

		-- trackName is not set if GetFFlagChannelAnimations is ON. We can retire this
		if not GetFFlagChannelAnimations() and instanceName and trackName then
			local instance = props.AnimationData.Instances[instanceName]
			local track = instance.Tracks[trackName]
			local newValue
			local trackType = track and track.Type or props.TrackType

			if GetFFlagFacialAnimationSupport() then
				newValue = TrackUtils.getDefaultValueByType(trackType)
				props.AddKeyframe_deprecated2(instanceName, trackName, trackType, tick, newValue, props.Analytics)
			else
				newValue = TrackUtils.getDefaultValue(track)
				props.AddKeyframe_deprecated(instanceName, trackName, tick, newValue, props.Analytics)
			end
		elseif GetFFlagChannelAnimations() and instanceName and path then
			local value
			local trackType = props.TrackType
			if isChannelAnimation then
				TrackUtils.traverseComponents(trackType, function(componentType, relPath)
					local componentPath = Cryo.List.join(path, relPath)
					value = KeyframeUtils.getDefaultValue(componentType)
					local keyframeData = {
						Value = value,
						InterpolationMode = Enum.KeyInterpolationMode.Cubic
					}
					props.AddKeyframe(instanceName, componentPath, componentType, tick, keyframeData, props.Analytics)
				end)
			else
				value = KeyframeUtils.getDefaultValue(trackType)
				local keyframeData = {
					Value = value,
					EasingStyle = Enum.PoseEasingStyle.Linear,
					EasingDirection = Enum.PoseEasingDirection.In
				}
				props.AddKeyframe(instanceName, path, trackType, tick, keyframeData, props.Analytics)
			end
		else
			-- If the user clicked the summary track, add a reset keyframe for
			-- every currently opened track.
			for instanceName, instance in pairs(props.AnimationData.Instances) do
				for _, openTrack in pairs(tracks) do
					local trackName = openTrack.Name
					local track = instance.Tracks[trackName]
					local newValue
					local trackType

					if GetFFlagChannelAnimations() and isChannelAnimation then
						trackType = track and track.Type or TrackUtils.getTrackTypeFromName(trackName, tracks)
						TrackUtils.traverseComponents(trackType, function(componentType, relPath)
							local path = Cryo.List.join({trackName}, relPath)
							newValue = KeyframeUtils.getDefaultValue(componentType)
							local keyframeData = {
								Value = newValue,
								InterpolationMode = Enum.KeyInterpolationMode.Cubic
							}
							props.AddKeyframe(instanceName, path, componentType, tick, keyframeData, props.Analytics)
						end)
					else
						if GetFFlagChannelAnimations() then
							trackType = track and track.Type or TrackUtils.getTrackTypeFromName(trackName, tracks)
							newValue = KeyframeUtils.getDefaultValue(trackType)
							local keyframeData = {
								Value = newValue,
								EasingStyle = Enum.PoseEasingStyle.Linear,
								EasingDirection = Enum.PoseEasingDirection.In
							}
							props.AddKeyframe(instanceName, {trackName}, trackType, tick, keyframeData, props.Analytics)
						elseif GetFFlagFacialAnimationSupport() then
							trackType = track and track.Type or TrackUtils.getTrackTypeFromName(trackName, tracks)
							newValue = TrackUtils.getDefaultValueByType(trackType)
							props.AddKeyframe_deprecated2(instanceName, trackName, trackType, tick, newValue, props.Analytics)
						else
							newValue = TrackUtils.getDefaultValue(track)
							props.AddKeyframe_deprecated(instanceName, trackName, tick, newValue, props.Analytics)
						end
					end
				end
			end
		end
	end)

	self:addAction(actions:get("RenameKeyframe"), function()
		local props = self.props
		props.OnRenameKeyframe(props.Tick)
	end)

	self:addAction(actions:get("PasteKeyframes"), function()
		local props = self.props
		local tick = props.Tick or props.Playhead
		props.PasteKeyframes(tick, props.Analytics)
	end)

	self:addAction(actions:get("CutSelected"), function()
		local props = self.props
		props.CopySelectedKeyframes()
		props.DeleteSelectedKeyframes(props.Analytics)
	end)

	self:addAction(actions:get("AddEvent"), function()
		local props = self.props
		local tick = props.Tick
		props.OnEditEvents(tick)
	end)

	self:addAction(actions:get("ToggleTool"), function()
		local props = self.props
		local tool = props.Tool
		if tool == Enum.RibbonTool.Move then
			props.SetTool(Enum.RibbonTool.Rotate)
		else
			props.SetTool(Enum.RibbonTool.Move)
		end
	end)

	local function togglePlayWrapper()
		return self.props.TogglePlay(self.props.Analytics)
	end

	local function deleteSelectedKeyframesWrapper()
		return self.props.DeleteSelectedKeyframes(self.props.Analytics)
	end

	local function undoWrapper()
		return self.props.Undo(self.props.Signals)
	end


	self:addAction(actions:get("CopySelected"), self.props.CopySelectedKeyframes)
	self:addAction(actions:get("DeleteSelected"), deleteSelectedKeyframesWrapper)
	if FFlagAnimEditorFixBackspaceOnMac() then
		self:addAction(actions:get("DeleteSelectedBackspace"), deleteSelectedKeyframesWrapper)
	end
	self:addAction(actions:get("ResetSelected"), self.props.ResetSelectedKeyframes)
	self:addAction(actions:get("SelectAll"), self.props.SelectAllKeyframes)
	self:addAction(actions:get("DeselectAll"), self.props.DeselectAllKeyframes)
	self:addAction(actions:get("ChangeDuration"), self.props.OnChangeDuration)

	self:addAction(actions:get("Undo"), undoWrapper)
	self:addAction(actions:get("Redo"), self.props.Redo)

	self:addAction(actions:get("TogglePlay"), togglePlayWrapper)
	self:addAction(actions:get("ToggleBoneVis"), self.props.ToggleBoneVisibility)
	if GetFFlagChannelAnimations() then
		self:addAction(actions:get("ClearTangents"), self.props.OnClearTangentsSelected)
	end
end

function TimelineActions:render()
	local props = self.props
	local showMenu = props.ShowMenu
	local clipboard = props.Clipboard
	local clipboardType = props.ClipboardType
	local selectedKeyframes = props.SelectedKeyframes
	local summaryKeyframe = props.SummaryKeyframe
	local multipleSelected = props.MultipleSelected
	local tool = props.Tool
	local tracks = props.Tracks
	local isChannelAnimation = props.IsChannelAnimation

	local actions = self.Actions
	local pluginActions = self.props.PluginActions
	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if GetFFlagChannelAnimations() then
			-- TODO: At some point, we will want to support copy/paste between Keyframe and Channel
			-- animations and vice-versa. However, this requires some additional work:
			-- Keyframe -> Channel: We need to split each CFrame into components, and potentially convert
			--     bounce/elastic interpolation to curves, with additional keys
			-- Channel -> Keyframe: We need to evaluate the value for the channels that are not copied to
			--     create full CFrames (for instance, if we only copy the Position.X channel)
			local expectedClipboardType = isChannelAnimation and Constants.CLIPBOARD_TYPE.Channels or Constants.CLIPBOARD_TYPE.Keyframes
			if clipboard and not isEmpty(clipboard) and clipboardType == expectedClipboardType then
				pluginActions:get("PasteKeyframes").Enabled = true
			end
		else
			if clipboard and not isEmpty(clipboard)
				and clipboardType == Constants.CLIPBOARD_TYPE.Keyframes then
				pluginActions:get("PasteKeyframes").Enabled = true
			end
		end

		if selectedKeyframes and not isEmpty(selectedKeyframes) then
			pluginActions:get("DeselectAll").Enabled = true
			pluginActions:get("CutSelected").Enabled = true
			pluginActions:get("CopySelected").Enabled = true
			pluginActions:get("ResetSelected").Enabled = true
			pluginActions:get("DeleteSelected").Enabled = true
			if FFlagAnimEditorFixBackspaceOnMac() then
				pluginActions:get("DeleteSelectedBackspace").Enabled = true
			end
		else
			pluginActions:get("SelectAll").Enabled = true
		end

		if not props.OnKeyframe and not isEmpty(tracks) then
			pluginActions:get("AddKeyframeHere").Enabled = true
			pluginActions:get("AddResetKeyframe").Enabled = true
		end

		pluginActions:get("AddKeyframeAtScrubber").Enabled = true

		if multipleSelected then
			pluginActions:get("ChangeDuration").Enabled = true
		end

		if summaryKeyframe ~= nil then
			pluginActions:get("RenameKeyframe").Enabled = true
		end

		if GetFFlagChannelAnimations() and isChannelAnimation then
			pluginActions:get("ClearTangents").Enabled = true
		end

		if tool == Enum.RibbonTool.Rotate or tool == Enum.RibbonTool.Move then
			pluginActions:get("ToggleTool").Enabled = true
		end

		pluginActions:get("Undo").Enabled = true
		pluginActions:get("Redo").Enabled = true
		pluginActions:get("TogglePlay").Enabled = true
		pluginActions:get("AddEvent").Enabled = true
		pluginActions:get("ToggleBoneVis").Enabled = true
	end

	local localization = self.props.Localization
		return showMenu and Roact.createElement(ContextMenu, {
			Actions = self:makeMenuActions(localization),
			OnMenuOpened = props.OnMenuOpened,
		}) or nil
end

function TimelineActions:willUnmount()
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

if FFlagAnimationClipEditorWithContext then
	TimelineActions = withContext({
		Localization = ContextServices.Localization,
		PluginActions = ContextServices.PluginActions,
		Analytics = ContextServices.Analytics,
		Signals = SignalsContext,
	})(TimelineActions)
else
	ContextServices.mapToProps(TimelineActions, {
		Localization = ContextServices.Localization,
		PluginActions = ContextServices.PluginActions,
		Analytics = ContextServices.Analytics,
		Signals = SignalsContext,
	})
end


local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Clipboard = status.Clipboard,
		ClipboardType = status.ClipboardType,
		SelectedKeyframes = status.SelectedKeyframes,
		Playhead = status.Playhead,
		AnimationData = state.AnimationData,
		Tracks = status.Tracks,
		Path = status.RightClickContextInfo.Path,
		TrackName = status.RightClickContextInfo.TrackName,
		TrackType = status.RightClickContextInfo.TrackType,
		InstanceName = status.RightClickContextInfo.InstanceName,
		Tick = status.RightClickContextInfo.Tick,
		SummaryKeyframe = status.RightClickContextInfo.SummaryKeyframe,
		OnKeyframe = status.RightClickContextInfo.OnKeyframe,
		Tool = status.Tool,
		SelectedTracks = status.SelectedTracks,
	}
end

local function mapDispatchToProps(dispatch)
	return{
		SelectAllKeyframes = function()
			dispatch(SelectAllKeyframes())
			dispatch(SetSelectedEvents({}))
		end,

		DeselectAllKeyframes = function()
			dispatch(SetSelectedKeyframes{})
			dispatch(SetSelectedEvents({}))
		end,

		DeleteSelectedKeyframes = function(analytics)
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedKeyframes(analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		ResetSelectedKeyframes = function()
			dispatch(AddWaypoint())
			dispatch(ResetSelectedKeyframes())
			dispatch(SetRightClickContextInfo({}))
		end,

		CopySelectedKeyframes = function()
			dispatch(CopySelectedKeyframes())
			dispatch(SetRightClickContextInfo({}))
		end,

		PasteKeyframes = function(tick, analytics)
			dispatch(AddWaypoint())
			dispatch(PasteKeyframes(tick, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		AddKeyframe = function(instance, path, trackType, tick, keyframeData, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, path, trackType, tick, keyframeData, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		AddKeyframe_deprecated2 = function(instance, trackName, trackType, tick, value, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, trackName, trackType, tick, value, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() and GetFFlagChannelAnimations() are retired
		AddKeyframe_deprecated = function(instance, trackName, tick, value, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, trackName, tick, value, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		OnEditEvents = function(tick)
			dispatch(SetShowEvents(true))
			dispatch(SetEventEditingTick(tick))
		end,

		Undo = function(signals)
			dispatch(Undo(signals))
		end,

		Redo = function()
			dispatch(Redo())
		end,

		TogglePlay = function(analytics)
			dispatch(TogglePlay(analytics))
		end,

		SetTool = function(tool)
			dispatch(SetTool(tool))
		end,

		ToggleBoneVisibility = function()
			dispatch(ToggleBoneVisibility())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TimelineActions)
