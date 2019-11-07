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
		function OnRenameKeyframe(frame) = A callback for when the user wants to start renaming
			a keyframe in the timeline.
]]

local EASING_STYLE_ORDER = {
	Enum.PoseEasingStyle.Linear,
	Enum.PoseEasingStyle.Constant,
	Enum.PoseEasingStyle.Cubic,
	Enum.PoseEasingStyle.Elastic,
	Enum.PoseEasingStyle.Bounce,
}

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local ActionContext = require(Plugin.Src.Context.ActionContext)
local getActions = ActionContext.getActions

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local PasteKeyframes = require(Plugin.Src.Thunks.PasteKeyframes)
local CopySelectedKeyframes = require(Plugin.Src.Thunks.Selection.CopySelectedKeyframes)
local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
local ResetSelectedKeyframes = require(Plugin.Src.Thunks.Selection.ResetSelectedKeyframes)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)

local SelectAllKeyframes = require(Plugin.Src.Thunks.Selection.SelectAllKeyframes)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SetEventEditingFrame = require(Plugin.Src.Actions.SetEventEditingFrame)
local SetTool = require	(Plugin.Src.Actions.SetTool)

local UILibrary = require(Plugin.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Undo = require(Plugin.Src.Thunks.History.Undo)
local Redo = require(Plugin.Src.Thunks.History.Redo)

local TogglePlay = require(Plugin.Src.Thunks.Playback.TogglePlay)

local FFlagAnimEditorFixBackspaceOnMac = require(Plugin.LuaFlags.GetFFlagAnimEditorFixBackspaceOnMac)

local TimelineActions = Roact.PureComponent:extend("TimelineActions")

-- Returns the easing value shared among all selected keyframes,
-- or nil if any keyframes do not share the same easing info.
function TimelineActions:getSharedEasingValue(key)
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local animationData = props.AnimationData

	local sharedEasingValue = nil
	for instanceName, instance in pairs(selectedKeyframes) do
		local dataInstance = animationData.Instances[instanceName]
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			local track = dataInstance.Tracks[trackName]
			for _, keyframe in ipairs(keyframes) do
				if track.Data[keyframe] then
					if sharedEasingValue == nil then
						sharedEasingValue = track.Data[keyframe][key]
					elseif sharedEasingValue ~= track.Data[keyframe][key] then
						sharedEasingValue = nil
						break
					end
				end
			end
		end
	end
	return sharedEasingValue and sharedEasingValue.Value
end

-- Creates a submenu for selecting an enum item.
function TimelineActions:makeSelectionSubMenu(enumKey, dataKey, displayText)
	local props = self.props

	return {
		Name = displayText,
		Items = enumKey == "PoseEasingStyle" and EASING_STYLE_ORDER or Enum[enumKey]:GetEnumItems(),
		CurrentItem = self:getSharedEasingValue(dataKey),
		ItemSelected = function(item)
			props.OnItemSelected(dataKey, item)
		end,
	}
end

function TimelineActions:makeMenuActions(localization)
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local summaryKeyframe = props.SummaryKeyframe
	local pluginActions = getActions(self)

	local actions = {
		pluginActions.AddKeyframeHere,
		pluginActions.DeleteSelected,
		Constants.MENU_SEPARATOR,
		pluginActions.CutSelected,
		pluginActions.CopySelected,
		pluginActions.PasteKeyframes,
		Constants.MENU_SEPARATOR,
	}

	if selectedKeyframes and not isEmpty(selectedKeyframes) then
		table.insert(actions, pluginActions.ResetSelected)
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, pluginActions.ChangeDuration)
		-- EasingStyle and EasingDirection customization
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, self:makeSelectionSubMenu("PoseEasingStyle", "EasingStyle",
			localization:getText("ContextMenu", "EasingStyle")))
		table.insert(actions, self:makeSelectionSubMenu("PoseEasingDirection", "EasingDirection",
			localization:getText("ContextMenu", "EasingDirection")))
	else
		table.insert(actions, pluginActions.AddResetKeyframe)
	end

	table.insert(actions, Constants.MENU_SEPARATOR)
	table.insert(actions, pluginActions.AddEvent)

	if summaryKeyframe ~= nil then
		table.insert(actions, pluginActions.RenameKeyframe)
	end

	return actions
end

function TimelineActions:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:connect(func))
	end
end

function TimelineActions:init(initialProps)
	local actions = getActions(self)
	self.Connections = {}
	self.Actions = {}

	self:addAction(actions.AddKeyframeHere, function()
		local props = self.props
		local frame = props.Frame
		local trackName = props.TrackName
		local instanceName = props.InstanceName
		local tracks = props.Tracks

		local function addKeyframe(instanceName, trackName, track)
			local newValue
			if track and track.Keyframes then
				newValue = KeyframeUtils:getValue(track, frame)
			else
				newValue = TrackUtils.getDefaultValue(track)
			end
			props.AddKeyframe(instanceName, trackName, frame, newValue)
		end

		if instanceName and trackName then
			local instance = props.AnimationData.Instances[instanceName]
			local track = instance.Tracks[trackName]
			addKeyframe(instanceName, trackName, track)
		else
			-- If the user clicked the summary track, add a keyframe for
			-- every currently opened track.
			for instanceName, instance in pairs(props.AnimationData.Instances) do
				for _, openTrack in pairs(tracks) do
					local trackName = openTrack.Name
					local track = instance.Tracks[trackName]
					addKeyframe(instanceName, trackName, track)
				end
			end
		end
	end)

	self:addAction(actions.AddResetKeyframe, function()
		local props = self.props
		local frame = props.Frame
		local trackName = props.TrackName
		local instanceName = props.InstanceName
		local tracks = props.Tracks

		if instanceName and trackName then
			local instance = props.AnimationData.Instances[instanceName]
			local track = instance.Tracks[trackName]
			local newValue = TrackUtils.getDefaultValue(track)
			props.AddKeyframe(instanceName, trackName, frame, newValue)
		else
			-- If the user clicked the summary track, add a reset keyframe for
			-- every currently opened track.
			for instanceName, instance in pairs(props.AnimationData.Instances) do
				for _, openTrack in pairs(tracks) do
					local trackName = openTrack.Name
					local track = instance.Tracks[trackName]
					local newValue = TrackUtils.getDefaultValue(track)
					props.AddKeyframe(instanceName, trackName, frame, newValue)
				end
			end
		end
	end)

	self:addAction(actions.RenameKeyframe, function()
		local props = self.props
		props.OnRenameKeyframe(props.Frame)
	end)

	self:addAction(actions.PasteKeyframes, function()
		local props = self.props
		local frame = props.Frame or props.Playhead
		props.PasteKeyframes(frame)
	end)

	self:addAction(actions.CutSelected, function()
		local props = self.props
		props.CopySelectedKeyframes()
		props.DeleteSelectedKeyframes()
	end)

	self:addAction(actions.AddEvent, function()
		local props = self.props
		local frame = props.Frame
		props.OnEditEvents(frame)
	end)

	self:addAction(actions.ToggleTool, function()
		local props = self.props
		local tool = props.Tool
		if tool == Enum.RibbonTool.Move then
			props.SetTool(Enum.RibbonTool.Rotate)
		else
			props.SetTool(Enum.RibbonTool.Move)
		end
	end)

	self:addAction(actions.CopySelected, initialProps.CopySelectedKeyframes)
	self:addAction(actions.DeleteSelected, initialProps.DeleteSelectedKeyframes)
	if FFlagAnimEditorFixBackspaceOnMac() then
		self:addAction(actions.DeleteSelectedBackspace, initialProps.DeleteSelectedKeyframes)
	end
	self:addAction(actions.ResetSelected, initialProps.ResetSelectedKeyframes)
	self:addAction(actions.SelectAll, initialProps.SelectAllKeyframes)
	self:addAction(actions.DeselectAll, initialProps.DeselectAllKeyframes)
	self:addAction(actions.ChangeDuration, initialProps.OnChangeDuration)

	self:addAction(actions.Undo, initialProps.Undo)
	self:addAction(actions.Redo, initialProps.Redo)

	self:addAction(actions.TogglePlay, initialProps.TogglePlay)
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

	local actions = self.Actions
	local pluginActions = getActions(self)

	if not isEmpty(pluginActions) then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		if clipboard and not isEmpty(clipboard)
			and clipboardType == Constants.CLIPBOARD_TYPE.Keyframes then
			pluginActions.PasteKeyframes.Enabled = true
		end

		if selectedKeyframes and not isEmpty(selectedKeyframes) then
			pluginActions.DeselectAll.Enabled = true
			pluginActions.CutSelected.Enabled = true
			pluginActions.CopySelected.Enabled = true
			pluginActions.ResetSelected.Enabled = true
			pluginActions.DeleteSelected.Enabled = true
			if FFlagAnimEditorFixBackspaceOnMac() then
				pluginActions.DeleteSelectedBackspace.Enabled = true
			end
		else
			pluginActions.SelectAll.Enabled = true
		end

		if not props.OnKeyframe and not isEmpty(tracks) then
			pluginActions.AddKeyframeHere.Enabled = true
			pluginActions.AddResetKeyframe.Enabled = true
		end

		if multipleSelected then
			pluginActions.ChangeDuration.Enabled = true
		end

		if summaryKeyframe ~= nil then
			pluginActions.RenameKeyframe.Enabled = true
		end

		if tool == Enum.RibbonTool.Rotate or tool == Enum.RibbonTool.Move then
			pluginActions.ToggleTool.Enabled = true
		end

		pluginActions.Undo.Enabled = true
		pluginActions.Redo.Enabled = true
		pluginActions.TogglePlay.Enabled = true
		pluginActions.AddEvent.Enabled = true
	end

	return withLocalization(function(localization)
		return showMenu and Roact.createElement(ContextMenu, {
			Actions = self:makeMenuActions(localization),
			OnMenuOpened = props.OnMenuOpened,
		}) or nil
	end)
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

local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Clipboard = status.Clipboard,
		ClipboardType = status.ClipboardType,
		SelectedKeyframes = status.SelectedKeyframes,
		Playhead = status.Playhead,
		AnimationData = state.AnimationData,
		Tracks = status.Tracks,
		TrackName = status.RightClickContextInfo.TrackName,
		InstanceName = status.RightClickContextInfo.InstanceName,
		Frame = status.RightClickContextInfo.Frame,
		SummaryKeyframe = status.RightClickContextInfo.SummaryKeyframe,
		OnKeyframe = status.RightClickContextInfo.OnKeyframe,
		Tool = status.Tool,
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

		DeleteSelectedKeyframes = function()
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedKeyframes())
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

		PasteKeyframes = function(frame)
			dispatch(AddWaypoint())
			dispatch(PasteKeyframes(frame))
			dispatch(SetRightClickContextInfo({}))
		end,

		AddKeyframe = function(instance, track, frame, value)
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instance, track, frame, value))
			dispatch(SetRightClickContextInfo({}))
		end,

		OnEditEvents = function(frame)
			dispatch(SetShowEvents(true))
			dispatch(SetEventEditingFrame(frame))
		end,

		Undo = function()
			dispatch(Undo())
		end,

		Redo = function()
			dispatch(Redo())
		end,

		TogglePlay = function()
			dispatch(TogglePlay())
		end,

		SetTool = function(tool)
			dispatch(SetTool(tool))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TimelineActions)