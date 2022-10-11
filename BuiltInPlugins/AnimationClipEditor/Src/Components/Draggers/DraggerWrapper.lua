local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Selection = game:GetService("Selection")

local SignalsContext = require(Plugin.Src.Context.Signals)

local AnimationClipEditorDragger = require(Plugin.Src.Components.Draggers.AnimationClipEditorDragger)

local DraggerFramework = Plugin.Packages.DraggerFramework
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local Constants = require(Plugin.Src.Util.Constants)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local ValueChanged = require(Plugin.Src.Thunks.ValueChanged)
local DraggerSchema = require(Plugin.Src.Util.DraggerSchema.DraggerSchema)
local SetSelectedTrackInstances = require(Plugin.Src.Actions.SetSelectedTrackInstances)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)
local GetFFlagRetireWillUpdate = require(Plugin.LuaFlags.GetFFlagRetireWillUpdate)

local DraggerWrapper = Roact.PureComponent:extend("DraggerWrapper")

function DraggerWrapper:init()
	if not GetFFlagRetireWillUpdate() then
		self.state = {
			selection = nil,
		}
	end
end

function DraggerWrapper:didUpdate(oldProps)
	if GetFFlagRetireWillUpdate() then
		local props = self.props
		if self.selection and props.SelectedTrackInstances ~= oldProps.SelectedTrackInstances then
			self.selection.selectedTrackInstances = props.SelectedTrackInstances
			local selectionSignal = self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)
			selectionSignal:Fire()
		end
	end
end

function DraggerWrapper:willUpdate(nextProps)
	if not GetFFlagRetireWillUpdate() then
		local props = self.props
		if self.selection and props.SelectedTrackInstances ~= nextProps.SelectedTrackInstances then
			self.selection.selectedTrackInstances = nextProps.SelectedTrackInstances
			local selectionSignal = self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)
			selectionSignal:Fire()
		end
	end
end

local function mapDraggerContextToProps(draggerContext, props)
	draggerContext.RootInstance = props.RootInstance
	draggerContext.IKMode = props.IKMode
	draggerContext.StartingPose = props.StartingPose
	draggerContext.PinnedParts = props.PinnedParts
	draggerContext.IKEnabled = props.IKEnabled
	draggerContext.Tool = props.Tool
	draggerContext.IsPlaying = props.PlayState ~= Constants.PLAY_STATE.Pause
	draggerContext.BoneLinksToBone = props.BoneLinksToBone
	draggerContext.VisualizeBones = props.VisualizeBones

	draggerContext.ScrubberSignal = props.Signals:get(Constants.SIGNAL_KEYS.ScrubberChanged)
	draggerContext.OnManipulateJoints = function(instanceName, values)
		if (GetFFlagKeyframeReduction() and props.ReadOnly) or props.PlayState ~= Constants.PLAY_STATE.Pause then
			return
		end

		for trackName, value in pairs(values) do
			local path = { trackName }
			if not AnimationData.isChannelAnimation(props.AnimationData) then
				props.ValueChanged(
					instanceName,
					path,
					Constants.TRACK_TYPES.CFrame,
					props.Playhead,
					value,
					props.Analytics
				)
			else
				local rotationType
				local eulerAnglesOrder = props.DefaultEulerAnglesOrder
				rotationType = TrackUtils.getRotationTypeFromName(trackName, props.Tracks) or props.DefaultRotationType
				if rotationType == Constants.TRACK_TYPES.EulerAngles then
					local track = AnimationData.getTrack(props.AnimationData, "Root", path)
					eulerAnglesOrder = TrackUtils.getEulerAnglesOrder(track) or eulerAnglesOrder
				end
				-- Change the value of all tracks
				TrackUtils.traverseValue(Constants.TRACK_TYPES.CFrame, value, function(_trackType, relPath, _value)
					props.ValueChanged(
						instanceName,
						Cryo.List.join(path, relPath),
						_trackType,
						props.Playhead,
						_value,
						props.Analytics
					)
				end, rotationType, eulerAnglesOrder)
			end
		end
	end
end

local function setUpDraggerContext(props)
	local plugin = props.Plugin:get()

	local selectionSignal = props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)

	local selection = DraggerSchema.Selection.new(selectionSignal, props.SetSelectedTrackInstances)
	local draggerContext = DraggerContext_PluginImpl.new(plugin, game, settings(), selection)
	draggerContext.AddWaypoint = function()
		props.AddWaypoint()
	end
	return selection, draggerContext
end

function DraggerWrapper:render()
	local props = self.props

	local tool = props.Tool
	local mouse = props.Mouse:get()

	if not self.draggerContext then
		if props.AnimationData ~= nil then
			self.selection, self.draggerContext = setUpDraggerContext(props)
			if not GetFFlagRetireWillUpdate() then
				self:setState({
					selection = self.selection,
				})
			end
		else
			return
		end
	end

	if props.AnimationData ~= nil then
		mapDraggerContextToProps(self.draggerContext, props)
	end

	return Roact.createElement(AnimationClipEditorDragger, {
		Context = self.draggerContext,
		Tool = tool,
		Mouse = mouse,
	})
end

local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Tool = state.Status.Tool,
		SelectedTrackInstances = state.Status.SelectedTrackInstances,
		RootInstance = state.Status.RootInstance,
		IKMode = state.Status.IKMode,
		StartingPose = state.Status.StartingPose,
		PinnedParts = state.Status.PinnedParts,
		IKEnabled = state.Status.IKEnabled,
		Playhead = state.Status.Playhead,
		Tracks = state.Status.Tracks,
		PlayState = status.PlayState,
		AnimationData = state.AnimationData,
		DefaultRotationType = status.DefaultRotationType,
		DefaultEulerAnglesOrder = status.DefaultEulerAnglesOrder,
		BoneLinksToBone = state.Status.BoneLinksToBone,
		VisualizeBones = state.Status.VisualizeBones,
		ReadOnly = state.Status.ReadOnly,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetSelectedTrackInstances = function(tracks)
			dispatch(SetSelectedTrackInstances(tracks))
		end,

		ValueChanged = function(instanceName, path, trackType, tck, value, analytics)
			dispatch(ValueChanged(instanceName, path, trackType, tck, value, analytics))
		end,

		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,
	}
end

DraggerWrapper = withContext({
	Plugin = ContextServices.Plugin,
	PluginActions = ContextServices.PluginActions,
	Signals = SignalsContext,
	Mouse = ContextServices.Mouse,
	Analytics = ContextServices.Analytics,
})(DraggerWrapper)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(DraggerWrapper)
