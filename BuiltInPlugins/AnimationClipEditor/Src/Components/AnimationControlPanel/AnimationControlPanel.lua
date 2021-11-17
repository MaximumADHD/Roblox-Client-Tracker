--[[
	Main frame for editor controls, time display, and selecting
	animation clips.

	Properties:
		int StartTick = beginning tick displayed on the timeline/dope sheet range
		int EndTick = last tick displayed on the timeline/dope sheet range
		int Playhead = current tick location of the scubber
		int EditingLength = current maximum length of the animation editor timeline
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AnimationClipDropdown = require(Plugin.Src.Components.AnimationControlPanel.AnimationClipDropdown)
local MediaControls = require(Plugin.Src.Components.AnimationControlPanel.MediaControls)
local TimeDisplay = require(Plugin.Src.Components.AnimationControlPanel.TimeDisplay)

local TogglePlay = require(Plugin.Src.Thunks.Playback.TogglePlay)
local ToggleLooping = require(Plugin.Src.Thunks.Playback.ToggleLooping)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SkipAnimation = require(Plugin.Src.Thunks.Playback.SkipAnimation)
local UpdateEditingLength = require(Plugin.Src.Thunks.UpdateEditingLength)

local AnimationControlPanel = Roact.PureComponent:extend("AnimationControlPanel")

function AnimationControlPanel:init()
	self.toggleLoopingWrapper = function()
		return self.props.ToggleLooping(self.props.Analytics)
	end
	self.loadAnimationDataWrapper = function(animation)
		return self.props.LoadAnimationData(animation, self.props.Analytics)
	end
	self.skipBackwardWrapper = function()
		return self.props.SkipBackward(self.props.Analytics)
	end

	self.skipForwardWrapper = function()
		return self.props.SkipForward(self.props.Analytics)
	end

	self.togglePlayWrapper = function()
		return self.props.TogglePlay(self.props.Analytics)
	end
end

function AnimationControlPanel:render()
	local props = self.props
	local theme = props.Theme:get("PluginTheme")

	local animationData = props.AnimationData
	local isPlaying = props.IsPlaying
	local rootInstance = props.RootInstance
	local startTick = props.StartTick
	local endTick = props.EndTick
	local playhead = props.Playhead
	local editingLength = props.EditingLength
	local showAsSeconds = props.ShowAsSeconds
	local updateEditingLength = props.UpdateEditingLength
	local stepAnimation = props.StepAnimation
	local frameRate = props.FrameRate
	local isChannelAnimation = props.IsChannelAnimation

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants.TIMELINE_HEIGHT),
		BorderSizePixel = 1,
		LayoutOrder = 0,
		BackgroundColor3 = theme.backgroundColor,
		BorderColor3 = theme.borderColor,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		AnimationClipDropdown = Roact.createElement(AnimationClipDropdown, {
			AnimationName = animationData and animationData.Metadata.Name or "",
			RootInstance = rootInstance,
			LoadAnimationData = self.loadAnimationDataWrapper,
			InstanceType = rootInstance and animationData and animationData.Instances.Root.Type,
			LayoutOrder = 0,
			IsChannelAnimation = isChannelAnimation,
		}),

		MediaControls = Roact.createElement(MediaControls, {
			IsPlaying = isPlaying,
			IsLooping = animationData and animationData.Metadata
				and animationData.Metadata.Looping or false,
			SkipBackward = self.skipBackwardWrapper,
			SkipForward = self.skipForwardWrapper,
			TogglePlay = self.togglePlayWrapper,
			ToggleLooping = self.toggleLoopingWrapper,
			LayoutOrder = 1,
		}),

		TimeDisplay = Roact.createElement(TimeDisplay, {
			StartTick = startTick,
			EndTick = endTick,
			FrameRate = frameRate,
			ShowAsTime = showAsSeconds,
			AnimationData = animationData,
			Playhead = playhead,
			EditingLength = editingLength,
			StepAnimation = stepAnimation,
			UpdateEditingLength = updateEditingLength,
			LayoutOrder = 2,
		}),
	})
end

if FFlagAnimationClipEditorWithContext then
	AnimationControlPanel = withContext({
		Theme = ContextServices.Theme,
		Analytics = ContextServices.Analytics
	})(AnimationControlPanel)
else
	ContextServices.mapToProps(AnimationControlPanel, {
		Theme = ContextServices.Theme,
		Analytics = ContextServices.Analytics
	})
end


local function mapStateToProps(state, props)
	return {
		IsPlaying = state.Status.IsPlaying,
		RootInstance = state.Status.RootInstance,
		FrameRate = state.Status.FrameRate
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ToggleLooping = function(analytics)
			dispatch(ToggleLooping(analytics))
		end,

		TogglePlay = function(analytics)
			dispatch(TogglePlay(analytics))
		end,

		StepAnimation = function(tick)
			dispatch(StepAnimation(tick))
		end,

		LoadAnimationData = function(data, analytics)
			dispatch(LoadAnimationData(data, analytics))
		end,

		UpdateEditingLength = function(length)
			dispatch(UpdateEditingLength(length))
		end,

		SkipBackward = function(analytics)
			dispatch(SkipAnimation(false, analytics))
		end,

		SkipForward = function(analytics)
			dispatch(SkipAnimation(true, analytics))
		end,
	}
end


return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AnimationControlPanel)