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
		bool IsCurveEditorEnabled = Whether the CurveEditor is currently displayed.
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

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SetEventEditingTick = require(Plugin.Src.Actions.SetEventEditingTick)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SetTool = require(Plugin.Src.Actions.SetTool)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local SignalsContext = require(Plugin.Src.Context.Signals)

local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local CopySelectedKeyframes = require(Plugin.Src.Thunks.Selection.CopySelectedKeyframes)
local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
local PasteKeyframes = require(Plugin.Src.Thunks.PasteKeyframes)
local Redo = require(Plugin.Src.Thunks.History.Redo)
local ResetSelectedKeyframes = require(Plugin.Src.Thunks.Selection.ResetSelectedKeyframes)
local SelectAllKeyframes = require(Plugin.Src.Thunks.Selection.SelectAllKeyframes)
local SplitTrack = require(Plugin.Src.Thunks.SplitTrack)
local ToggleBoneVisibility = require(Plugin.Src.Thunks.ToggleBoneVisibility)
local TogglePlay = require(Plugin.Src.Thunks.Playback.TogglePlay)
local Undo = require(Plugin.Src.Thunks.History.Undo)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)

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
	elseif enumKey == "KeyInterpolationMode" then
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

function TimelineActions:makeGenerateCurveMenu(localization)
	local props = self.props
	local function makeSubmenu(easingStyle)
		return {
			Name = easingStyle,
			Items = Enum.PoseEasingDirection:GetEnumItems(),
			ItemSelected = function(easingDirection)
				props.OnGenerateCurve(easingStyle, easingDirection)
			end,
		}
	end

	return {
		Name = localization:getText("ContextMenu", "GenerateCurve"),
		Items = {
			makeSubmenu(Enum.PoseEasingStyle.Bounce),
			makeSubmenu(Enum.PoseEasingStyle.Elastic),
		},
	}
end

function TimelineActions:multipleSelected()
	local props = self.props
	local data = props.AnimationData
	local selectedKeyframes = props.SelectedKeyframes

	local earliest, latest = AnimationData.getSelectionBounds(data, selectedKeyframes)
	return selectedKeyframes and earliest ~= latest
end

function TimelineActions:makeMenuActions(localization)
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local summaryKeyframe = props.SummaryKeyframe
	local pluginActions = self.props.PluginActions
	local isChannelAnimation = props.IsChannelAnimation

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
		if isChannelAnimation then
			table.insert(
				actions,
				self:makeSelectionSubMenu(
					"KeyInterpolationMode",
					"InterpolationMode",
					localization:getText("ContextMenu", "InterpolationMode")
				)
			)
			table.insert(actions, pluginActions:get("ClearBothTangents"))
			if self:multipleSelected() then
				table.insert(actions, self:makeGenerateCurveMenu(localization))
			end
		else
			table.insert(
				actions,
				self:makeSelectionSubMenu(
					"PoseEasingStyle",
					"EasingStyle",
					localization:getText("ContextMenu", "EasingStyle")
				)
			)
			table.insert(
				actions,
				self:makeSelectionSubMenu(
					"PoseEasingDirection",
					"EasingDirection",
					localization:getText("ContextMenu", "EasingDirection")
				)
			)
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
		local tck = props.Tick
		local trackName = props.TrackName
		local instanceName = props.InstanceName
		local tracks = props.Tracks
		local trackType = props.TrackType
		local rotationType = props.RotationType
		local path = props.Path
		local animationData = props.AnimationData
		local isChannelAnimation = props.IsChannelAnimation

		local function addKeyframe(instanceName, path)
			-- If the user clicked outside of a track, the trackType is not set
			trackType = trackType or TrackUtils.getTrackTypeFromName(path[1], tracks)
			rotationType = rotationType or TrackUtils.getRotationTypeFromName(path[1], tracks)
			if isChannelAnimation then
				TrackUtils.traverseComponents(trackType, function(componentType, relPath)
					local componentPath = Cryo.List.join(path, relPath)
					props.SplitTrack(instanceName, componentPath, componentType, tck, props.Analytics)
				end, rotationType)
			else
				local track = AnimationData.getTrack(animationData, instanceName, path)
				local value
				if track and track.Keyframes then
					value = KeyframeUtils.getValue(track, tck)
				else
					value = KeyframeUtils.getDefaultValue(trackType)
				end
				local keyframeData = {
					Value = value,
					EasingStyle = Enum.PoseEasingStyle.Linear,
					EasingDirection = Enum.PoseEasingDirection.In,
				}
				props.AddKeyframe(instanceName, path, trackType, tck, keyframeData, props.Analytics)
			end
		end

		if instanceName and path then
			addKeyframe(instanceName, path)
		else
			-- If the user clicked the summary track, add a keyframe for
			-- every currently opened track.
			-- This also happens if the user clicked below the last track (is it desired?)
			for instanceName, instance in pairs(props.AnimationData.Instances) do
				for _, openTrack in pairs(tracks) do
					local trackName = openTrack.Name
					addKeyframe(instanceName, { trackName })
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
					local track = AnimationData.getTrack(props.AnimationData, instanceName, selectedTrack)
					local trackType = track and track.Type or TrackUtils.getComponentTypeFromPath(selectedTrack, tracks)

					if isChannelAnimation then
						local rotationType = track and TrackUtils.getRotationType(track) or props.DefaultRotationType
						TrackUtils.traverseComponents(trackType, function(componentType, relPath)
							local componentPath = Cryo.List.join(selectedTrack, relPath)
							props.SplitTrack(instanceName, componentPath, componentType, playhead, props.Analytics)
						end, rotationType)
					else
						local value
						if track and track.Keyframes then
							value = KeyframeUtils.getValue(track, playhead)
						else
							value = KeyframeUtils.getDefaultValue(trackType)
						end
						local keyframeData = {
							Value = value,
							EasingStyle = Enum.PoseEasingStyle.Linear,
							EasingDirection = Enum.PoseEasingDirection.In,
						}
						props.AddKeyframe(
							instanceName,
							selectedTrack,
							trackType,
							playhead,
							keyframeData,
							props.Analytics
						)
					end
				end
			end
		end
	end)

	self:addAction(actions:get("AddResetKeyframe"), function()
		local props = self.props
		local tck = props.Tick
		local instanceName = props.InstanceName
		local tracks = props.Tracks
		local path = props.Path
		local isChannelAnimation = props.IsChannelAnimation

		if instanceName and path then
			local value
			local trackType = props.TrackType
			local rotationType = props.RotationType
			if isChannelAnimation then
				TrackUtils.traverseComponents(trackType, function(componentType, relPath)
					local componentPath = Cryo.List.join(path, relPath)
					value = KeyframeUtils.getDefaultValue(componentType)
					local keyframeData = {
						Value = value,
						InterpolationMode = Enum.KeyInterpolationMode.Cubic,
					}
					props.AddKeyframe(instanceName, componentPath, componentType, tck, keyframeData, props.Analytics)
				end, rotationType)
			else
				value = KeyframeUtils.getDefaultValue(trackType)
				local keyframeData = {
					Value = value,
					EasingStyle = Enum.PoseEasingStyle.Linear,
					EasingDirection = Enum.PoseEasingDirection.In,
				}
				props.AddKeyframe(instanceName, path, trackType, tck, keyframeData, props.Analytics)
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
					local rotationType
					if isChannelAnimation then
						if track then
							trackType = track.Type
							local rotationTrack = track.Components
								and track.Components[Constants.PROPERTY_KEYS.Rotation]
							rotationType = rotationTrack and rotationTrack.Type or nil
						else
							trackType = TrackUtils.getTrackTypeFromName(trackName, tracks)
							rotationType = TrackUtils.getRotationTypeFromName(trackName, tracks)
						end
						TrackUtils.traverseComponents(trackType, function(componentType, relPath)
							local path = Cryo.List.join({ trackName }, relPath)
							newValue = KeyframeUtils.getDefaultValue(componentType)
							local keyframeData = {
								Value = newValue,
								InterpolationMode = Enum.KeyInterpolationMode.Cubic,
							}
							props.AddKeyframe(instanceName, path, componentType, tck, keyframeData, props.Analytics)
						end, rotationType)
					else
						trackType = track and track.Type or TrackUtils.getTrackTypeFromName(trackName, tracks)
						newValue = KeyframeUtils.getDefaultValue(trackType)
						local keyframeData = {
							Value = newValue,
							EasingStyle = Enum.PoseEasingStyle.Linear,
							EasingDirection = Enum.PoseEasingDirection.In,
						}
						props.AddKeyframe(instanceName, { trackName }, trackType, tck, keyframeData, props.Analytics)
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
		local tck = props.Tick or props.Playhead
		props.PasteKeyframes(tck, props.Analytics)
	end)

	self:addAction(actions:get("CutSelected"), function()
		local props = self.props
		props.CopySelectedKeyframes()
		props.DeleteSelectedKeyframes(props.Analytics)
	end)

	self:addAction(actions:get("AddEvent"), function()
		self.props.OnEditEvents(self.props.Tick)
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
	self:addAction(actions:get("ResetSelected"), self.props.ResetSelectedKeyframes)
	self:addAction(actions:get("SelectAll"), self.props.SelectAllKeyframes)
	self:addAction(actions:get("DeselectAll"), self.props.DeselectAllKeyframes)
	self:addAction(actions:get("ChangeDuration"), self.props.OnChangeDuration)

	self:addAction(actions:get("Undo"), undoWrapper)
	self:addAction(actions:get("Redo"), self.props.Redo)

	self:addAction(actions:get("TogglePlay"), togglePlayWrapper)
	self:addAction(actions:get("ToggleBoneVis"), self.props.ToggleBoneVisibility)
	self:addAction(actions:get("ClearBothTangents"), self.props.OnClearTangentsSelected)
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
	local readOnly = props.ReadOnly

	local actions = self.Actions
	local pluginActions = self.props.PluginActions
	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		-- TODO: At some point, we will want to support copy/paste between Keyframe and Channel
		-- animations and vice-versa. However, this requires some additional work:
		-- Keyframe -> Channel: We need to split each CFrame into components, and potentially convert
		--     bounce/elastic interpolation to curves, with additional keys
		-- Channel -> Keyframe: We need to evaluate the value for the channels that are not copied to
		--     create full CFrames (for instance, if we only copy the Position.X channel)
		local expectedClipboardType = isChannelAnimation and Constants.CLIPBOARD_TYPE.Channels
			or Constants.CLIPBOARD_TYPE.Keyframes
		if clipboard and not isEmpty(clipboard) and clipboardType == expectedClipboardType then
			pluginActions:get("PasteKeyframes").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		end

		if selectedKeyframes and not isEmpty(selectedKeyframes) then
			pluginActions:get("DeselectAll").Enabled = true
			pluginActions:get("CutSelected").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
			pluginActions:get("CopySelected").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
			pluginActions:get("ResetSelected").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
			pluginActions:get("DeleteSelected").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		else
			pluginActions:get("SelectAll").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		end

		if not props.OnKeyframe and not isEmpty(tracks) then
			pluginActions:get("AddKeyframeHere").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
			pluginActions:get("AddResetKeyframe").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		end

		pluginActions:get("AddKeyframeAtScrubber").Enabled = not (GetFFlagKeyframeReduction() and readOnly)

		if multipleSelected then
			pluginActions:get("ChangeDuration").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		end

		if summaryKeyframe ~= nil then
			pluginActions:get("RenameKeyframe").Enabled = true
		end

		if isChannelAnimation then
			pluginActions:get("ClearBothTangents").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		end

		if tool == Enum.RibbonTool.Rotate or tool == Enum.RibbonTool.Move then
			pluginActions:get("ToggleTool").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		end

		pluginActions:get("Undo").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		pluginActions:get("Redo").Enabled = not (GetFFlagKeyframeReduction() and readOnly)
		pluginActions:get("TogglePlay").Enabled = true
		pluginActions:get("AddEvent").Enabled = true
		pluginActions:get("ToggleBoneVis").Enabled = true
	end

	local localization = self.props.Localization
	return showMenu
			and (not GetFFlagKeyframeReduction() or not readOnly)
			and Roact.createElement(ContextMenu, {
				Actions = self:makeMenuActions(localization),
				OnMenuOpened = props.OnMenuOpened,
			})
		or nil
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

TimelineActions = withContext({
	Localization = ContextServices.Localization,
	PluginActions = ContextServices.PluginActions,
	Analytics = ContextServices.Analytics,
	Signals = SignalsContext,
})(TimelineActions)

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
		RotationType = status.RightClickContextInfo.RotationType,
		InstanceName = status.RightClickContextInfo.InstanceName,
		Tick = status.RightClickContextInfo.Tick,
		SummaryKeyframe = status.RightClickContextInfo.SummaryKeyframe,
		OnKeyframe = status.RightClickContextInfo.OnKeyframe,
		Tool = status.Tool,
		SelectedTracks = status.SelectedTracks,
		DefaultRotationType = status.DefaultRotationType,
		ReadOnly = status.ReadOnly,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SelectAllKeyframes = function()
			dispatch(SelectAllKeyframes())
			dispatch(SetSelectedEvents({}))
		end,

		DeselectAllKeyframes = function()
			dispatch(SetSelectedKeyframes({}))
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

		PasteKeyframes = function(tck, analytics)
			dispatch(AddWaypoint())
			dispatch(PasteKeyframes(tck, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		SplitTrack = function(instance, path, trackType, tck, analytics)
			dispatch(AddWaypoint())
			dispatch(SplitTrack(instance, path, trackType, tck, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		AddKeyframe = function(instance, path, trackType, tck, keyframeData, analytics)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, path, trackType, tck, keyframeData, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		OnEditEvents = function(tck)
			dispatch(SetShowEvents(true))
			dispatch(SetEventEditingTick(tck))
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
