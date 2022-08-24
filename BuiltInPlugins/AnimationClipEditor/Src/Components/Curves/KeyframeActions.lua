--!strict
--[[
	Handles curve keyframe actions and the context menu.
	When this component renders, it determines which actions should be enabled.
	This allows keyboard shortcuts to work only when they provide meaningful action.
	When the ShowMenu prop is true, this component also spawns a context menu
	to show the actions controlled by this component. Disabled actions will appear
	greyed out in this menu.

	Properties:
		ShowMenu: Whether the menu should be rendered
		MultipleSelected: Whether multiple keyframes are selected

		OnMenuOpened: Callback for when the context menu has successfully opened
		OnClearTangentsSelected: Callback to clear both tangents of the keyframe
		OnGenerateCurve: Callback to replace a range of keyframes with a generated curve
		OnChangeDuration: Callback to change the duration of a selected range
		OnInterpolationSelected: Callback to change the interpolation mode of selected keyframes
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)
local SignalsContext = require(Plugin.Src.Context.Signals)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
local SplitTrack = require(Plugin.Src.Thunks.SplitTrack)
local PasteKeyframes = require(Plugin.Src.Thunks.PasteKeyframes)
local CopySelectedKeyframes = require(Plugin.Src.Thunks.Selection.CopySelectedKeyframes)
local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
local ResetSelectedKeyframes = require(Plugin.Src.Thunks.Selection.ResetSelectedKeyframes)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local ToggleBoneVisibility = require(Plugin.Src.Thunks.ToggleBoneVisibility)

local SelectAllKeyframes = require(Plugin.Src.Thunks.Selection.SelectAllKeyframes)
local SetEventEditingTick = require(Plugin.Src.Actions.SetEventEditingTick)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SetTool = require	(Plugin.Src.Actions.SetTool)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Undo = require(Plugin.Src.Thunks.History.Undo)
local Redo = require(Plugin.Src.Thunks.History.Redo)

local TogglePlay = require(Plugin.Src.Thunks.Playback.TogglePlay)

local KeyframeActions = Roact.PureComponent:extend("KeyframeActions")

export type Props = {
	-- State/Context
	Analytics: any,
	AnimationData: any,
	Clipboard: any,
	ClipboardType: string,
	DefaultRotationType: string,
	Localization: any,
	Playhead: number,
	PluginActions: any,
	SelectedKeyframes: any,
	SelectedTracks: any,
	Signals: any,
	Tick: number,
	Tool: Enum.RibbonTool,

	-- Actions/Thunks
	AddKeyframe: (string, {string}, string, number, any, any) -> (),
	CopySelectedKeyframes: () -> (),
	DeleteSelectedKeyframes: (any) -> (),
	DeselectAllKeyframes: () -> (),
	PasteKeyframes: (number, any) -> (),
	Redo: () -> (),
	ResetSelectedKeyframes: () -> (),
	SelectAllKeyframes: () -> (),
	SetTool: (Enum.RibbonTool) -> (),
	SplitTrack: (string, {string}, string, number, any) -> (),
	ToggleBoneVisibility: () -> (),
	TogglePlay: (analytics: any) -> (),
	Undo: (signals: any) -> (),

	-- Properties
	ShowMenu: boolean,
	MultipleSelected: boolean,

	OnMenuOpened: () -> (),
	OnClearTangentsSelected: () -> (),
	OnGenerateCurve: (Enum.KeyInterpolationMode, Enum.KeyInterpolationMode) -> (),
	OnChangeDuration: () -> (),
	OnInterpolationSelected: (Enum.KeyInterpolationMode) -> (),
}

-- Returns the property value shared among all selected keyframes,
-- or nil if any keyframes do not share the same property value.
function KeyframeActions:getSharedPropertyValue(key: string): any
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local animationData = props.AnimationData
	local foundMismatch = false

	local sharedPropertyValue = nil
	for instanceName, instance in pairs(selectedKeyframes) do
		local dataInstance = animationData.Instances[instanceName]
		for trackName, selectionTrack in pairs(instance) do
			SelectionUtils.traverse(selectionTrack, dataInstance.Tracks[trackName], function(selTrack: any, dataTrack: any): ()
				if not selTrack.Selection or not dataTrack.Data or foundMismatch then
					return
				end
				for keyframe, _ in pairs(selTrack.Selection) do
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
			end, nil, nil)
		end
	end
	return if sharedPropertyValue then sharedPropertyValue.Value else nil
end

function KeyframeActions:makeInterpolationModeMenu(localization: any): any
	local props = self.props
	local items = Constants.KEY_INTERPOLATION_MODE_ORDER

	return {
		Name = localization:getText("ContextMenu", "InterpolationMode"),
		Items = items,
		CurrentValue = self:getSharedPropertyValue("InterpolationMode"),
		ItemSelected = props.OnInterpolationSelected,
	}
end

function KeyframeActions:makeGenerateCurveMenu(localization: any): any
	local props = self.props

	local function makeSubmenu(easingStyle: Enum.PoseEasingStyle): any
		return {
			Name = easingStyle,
			Items = Enum.PoseEasingDirection:GetEnumItems(),
			ItemSelected = function(easingDirection)
				props.OnGenerateCurve(easingStyle, easingDirection)
			end
		}
	end

	return {
		Name = localization:getText("ContextMenu", "GenerateCurve"),
		Items = {
			makeSubmenu(Enum.PoseEasingStyle.Bounce),
			makeSubmenu(Enum.PoseEasingStyle.Elastic)
		}
	}
end

function KeyframeActions:multipleSelected(): boolean
	local props = self.props
	local data = props.AnimationData
	local selectedKeyframes = props.SelectedKeyframes

	local earliest, latest = AnimationData.getSelectionBounds(data, selectedKeyframes)
	return selectedKeyframes and earliest ~= latest
end

function KeyframeActions:makeMenuActions(localization: any): any
	local props = self.props
	local selectedKeyframes = props.SelectedKeyframes
	local pluginActions = self.props.PluginActions

	local actions = {
		pluginActions:get("DeleteSelected"),
		Constants.MENU_SEPARATOR,
		pluginActions:get("CutSelected"),
		pluginActions:get("CopySelected"),
		pluginActions:get("PasteKeyframes"),
	}

	if selectedKeyframes and not isEmpty(selectedKeyframes) then
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, pluginActions:get("ResetSelected"))
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, pluginActions:get("ChangeDuration"))

		-- EasingStyle and EasingDirection customization
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, self:makeInterpolationModeMenu(localization))
		table.insert(actions, pluginActions:get("ClearBothTangents"))
		if self:multipleSelected() then
			table.insert(actions, self:makeGenerateCurveMenu(localization))
		end
	end

	table.insert(actions, Constants.MENU_SEPARATOR)
	table.insert(actions, pluginActions:get("AddEvent"))

	return actions
end

function KeyframeActions:addAction(action: any, func: () -> ()): ()
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function KeyframeActions:didMount(): ()
	local actions = self.props.PluginActions
	self.Connections = {}
	self.Actions = {}

	self:addAction(actions:get("AddKeyframeAtScrubber"), function(): ()
		local props = self.props
		local tracks = props.Tracks
		local playhead = props.Playhead
		local selectedTracks = props.SelectedTracks

		if selectedTracks then
			for instanceName, _ in pairs(props.AnimationData.Instances) do
				for _, selectedTrack in pairs(selectedTracks) do
					local track = AnimationData.getTrack(props.AnimationData, instanceName, selectedTrack)
					local trackType = track and track.Type or TrackUtils.getComponentTypeFromPath(selectedTrack, tracks)

					local rotationType = track and TrackUtils.getRotationType(track) or props.DefaultRotationType

					TrackUtils.traverseComponents(trackType, function(componentType: string, relPath: {string})
						local componentPath = Cryo.List.join(selectedTrack, relPath)
						props.SplitTrack(instanceName, componentPath, componentType, playhead, props.Analytics)
					end, rotationType)
				end
			end
		end
	end)

	self:addAction(actions:get("PasteKeyframes"), function(): ()
		local props = self.props
		local tck = props.Tick or props.Playhead
		props.PasteKeyframes(tck, props.Analytics)
	end)

	self:addAction(actions:get("CutSelected"), function(): ()
		local props = self.props
		props.CopySelectedKeyframes()
		props.DeleteSelectedKeyframes(props.Analytics)
	end)

	self:addAction(actions:get("ToggleTool"), function(): ()
		local props = self.props
		local tool = props.Tool
		if tool == Enum.RibbonTool.Move then
			props.SetTool(Enum.RibbonTool.Rotate)
		else
			props.SetTool(Enum.RibbonTool.Move)
		end
	end)

	local function togglePlayWrapper(): ()
		return self.props.TogglePlay(self.props.Analytics)
	end

	local function deleteSelectedKeyframesWrapper(): ()
		return self.props.DeleteSelectedKeyframes(self.props.Analytics)
	end

	local function undoWrapper(): ()
		return self.props.Undo(self.props.Signals)
	end

	-- Note: AddEvent is used both by KeyframeActions and TimelineActions,
	-- but we cannot add the action in both places as it would register
	-- two callbacks with a single event. The DopeSheet chose to register
	-- the callback in TimelineActions, so the CurveEditor will do the same.
	-- It's probably better, however, to create another component shared at
	-- a higher level (EditorController?) that registers the callback for
	-- everyone.
	self:addAction(actions:get("AddEvent"), function()
		self.props.OnEditEvents(self.props.Tick)
	end)

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

function KeyframeActions:render(): any
	local props = self.props
	local showMenu = props.ShowMenu
	local clipboard = props.Clipboard
	local clipboardType = props.ClipboardType
	local selectedKeyframes = props.SelectedKeyframes
	local multipleSelected = props.MultipleSelected
	local tool = props.Tool

	local actions = self.Actions
	local pluginActions = self.props.PluginActions
	if not isEmpty(pluginActions) and actions ~= nil then
		for _, action in ipairs(actions) do
			action.Enabled = false
		end

		local expectedClipboardType = Constants.CLIPBOARD_TYPE.Channels
		if clipboard and not isEmpty(clipboard) and clipboardType == expectedClipboardType then
			pluginActions:get("PasteKeyframes").Enabled = true
		end

		if selectedKeyframes and not isEmpty(selectedKeyframes) then
			pluginActions:get("DeselectAll").Enabled = true
			pluginActions:get("CutSelected").Enabled = true
			pluginActions:get("CopySelected").Enabled = true
			pluginActions:get("ResetSelected").Enabled = true
			pluginActions:get("DeleteSelected").Enabled = true
		else
			pluginActions:get("SelectAll").Enabled = true
		end

		pluginActions:get("AddKeyframeAtScrubber").Enabled = true

		if multipleSelected then
			pluginActions:get("ChangeDuration").Enabled = true
		end

		pluginActions:get("ClearBothTangents").Enabled = true

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

function KeyframeActions:willUnmount(): ()
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

KeyframeActions = withContext({
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	PluginActions = ContextServices.PluginActions,
	Signals = SignalsContext,
})(KeyframeActions)

local function mapStateToProps(state): {[string]: any}
	local status = state.Status

	return {
		AnimationData = state.AnimationData,
		Clipboard = status.Clipboard,
		ClipboardType = status.ClipboardType,
		DefaultRotationType = status.DefaultRotationType,
		Playhead = status.Playhead,
		SelectedKeyframes = status.SelectedKeyframes,
		SelectedTracks = status.SelectedTracks,
		Tick = status.RightClickContextInfo.Tick,
		Tool = status.Tool,
		Tracks = status.Tracks,
	}
end

local function mapDispatchToProps(dispatch): {[string]: any}
	return {
		AddKeyframe = function(instanceName: string, path: {string}, trackType: string, tck: number, keyframeData: any, analytics: any): ()
			dispatch(AddWaypoint())
			dispatch(AddKeyframe(instanceName, path, trackType, tck, keyframeData, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		CopySelectedKeyframes = function(): ()
			dispatch(CopySelectedKeyframes())
			dispatch(SetRightClickContextInfo({}))
		end,

		DeleteSelectedKeyframes = function(analytics: any): ()
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedKeyframes(analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		DeselectAllKeyframes = function(): ()
			dispatch(SetSelectedKeyframes{})
			dispatch(SetSelectedEvents({}))
		end,

		OnEditEvents = function(tck)
			dispatch(SetShowEvents(true))
			dispatch(SetEventEditingTick(tck))
		end,

		PasteKeyframes = function(tck: number, analytics: any): ()
			dispatch(AddWaypoint())
			dispatch(PasteKeyframes(tck, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		Redo = function(): ()
			dispatch(Redo())
		end,

		ResetSelectedKeyframes = function(): ()
			dispatch(AddWaypoint())
			dispatch(ResetSelectedKeyframes())
			dispatch(SetRightClickContextInfo({}))
		end,

		SelectAllKeyframes = function(): ()
			dispatch(SelectAllKeyframes())
			dispatch(SetSelectedEvents({}))
		end,

		SetTool = function(tool: Enum.RibbonTool): ()
			dispatch(SetTool(tool))
		end,

		SplitTrack = function(instanceName: string, path: {string}, trackType: string, tck: number, analytics: any): ()
			dispatch(AddWaypoint())
			dispatch(SplitTrack(instanceName, path, trackType, tck, analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		ToggleBoneVisibility = function(): ()
			dispatch(ToggleBoneVisibility())
		end,

		TogglePlay = function(analytics: any): ()
			dispatch(TogglePlay(analytics))
		end,

		Undo = function(signals: any): ()
			dispatch(Undo(signals))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(KeyframeActions)
