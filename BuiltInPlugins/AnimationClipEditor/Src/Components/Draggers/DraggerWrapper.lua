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

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagQuaternionChannels = require(Plugin.LuaFlags.GetFFlagQuaternionChannels)

local DraggerWrapper = Roact.PureComponent:extend("DraggerWrapper")

function DraggerWrapper:init()
	self.state = {
		selection = nil,
	}
end

function DraggerWrapper:willUpdate(nextProps)
	local props = self.props
	if self.selection and props.SelectedTrackInstances ~= nextProps.SelectedTrackInstances then
		self.selection.selectedTrackInstances = nextProps.SelectedTrackInstances
		local selectionSignal = self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)
		selectionSignal:Fire()
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

	draggerContext.ScrubberSignal = props.Signals:get(Constants.SIGNAL_KEYS.ScrubberChanged)
	draggerContext.OnManipulateJoints = function(instanceName, values)
		if props.PlayState ~= Constants.PLAY_STATE.Pause then
			return
		end

		for trackName, value in pairs(values) do
			if GetFFlagChannelAnimations() then
				if GetFFlagQuaternionChannels() then
					local path = {trackName}
					if not AnimationData.isChannelAnimation(props.AnimationData) then
						props.ValueChanged(instanceName, path, Constants.TRACK_TYPES.CFrame, props.Playhead, value, props.Analytics)
					else
						local rotationType
						if GetFFlagQuaternionChannels() then
							rotationType = TrackUtils.getRotationTypeFromName(trackName, props.Tracks) or props.DefaultRotationType
						else
							rotationType = Constants.TRACK_TYPES.Rotation
						end
						-- Change the value of all tracks
						TrackUtils.traverseValue(Constants.TRACK_TYPES.CFrame, value, function(_trackType, relPath, _value)
							props.ValueChanged(instanceName, Cryo.List.join(path, relPath), _trackType, props.Playhead, _value, props.Analytics)
						end, rotationType)
					end
				else
					props.ValueChanged(instanceName, {trackName}, Constants.TRACK_TYPES.CFrame, props.Playhead, value, props.Analytics)
				end
			elseif GetFFlagFacialAnimationSupport() then
				props.ValueChanged_deprecated2(instanceName, trackName, Constants.TRACK_TYPES.CFrame, props.Playhead, value, props.Analytics)
			else
				props.ValueChanged_deprecated(instanceName, trackName, props.Playhead, value, props.Analytics)
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
			self:setState({
				selection = self.selection,
			})
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

		ValueChanged_deprecated2 = function(instanceName, trackName, trackType, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, trackType, tick, value, analytics))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() and GetFFlagChannelAnimations() are retired
		ValueChanged_deprecated = function(instanceName, trackName, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, tick, value, analytics))
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
