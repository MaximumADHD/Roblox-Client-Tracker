--[[
	Main frame for editor controls, time display, and selecting
	animation clips.

	Properties:
		int StartFrame = beginning frame displayed on the timeline/dope sheet range
		int EndFrame = last frame displayed on the timeline/dope sheet range
		int Playhead = current frame location of the scubber
		int EditingLength = current maximum length of the animation editor timeline
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local Constants = require(Plugin.SrcDeprecated.Util.Constants)
local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local AnimationClipDropdown = require(Plugin.SrcDeprecated.Components.AnimationControlPanel.AnimationClipDropdown)
local MediaControls = require(Plugin.SrcDeprecated.Components.AnimationControlPanel.MediaControls)
local TimeDisplay = require(Plugin.SrcDeprecated.Components.AnimationControlPanel.TimeDisplay)

local TogglePlay = require(Plugin.SrcDeprecated.Thunks.Playback.TogglePlay)
local ToggleLooping = require(Plugin.SrcDeprecated.Thunks.Playback.ToggleLooping)
local StepAnimation = require(Plugin.SrcDeprecated.Thunks.Playback.StepAnimation)
local LoadAnimationData = require(Plugin.SrcDeprecated.Thunks.LoadAnimationData)
local SkipAnimation = require(Plugin.SrcDeprecated.Thunks.Playback.SkipAnimation)
local UpdateEditingLength = require(Plugin.SrcDeprecated.Thunks.UpdateEditingLength)

local AnimationControlPanel = Roact.PureComponent:extend("AnimationControlPanel")

function AnimationControlPanel:render()
	return withTheme(function(theme)
		local props = self.props

		local animationData = props.AnimationData
		local isPlaying = props.IsPlaying
		local rootInstance = props.RootInstance
		local startFrame = props.StartFrame
		local endFrame = props.EndFrame
		local playhead = props.Playhead
		local editingLength = props.EditingLength
		local showAsSeconds = props.ShowAsSeconds

		local stepAnimation = props.StepAnimation
		local togglePlay = props.TogglePlay
		local toggleLooping = props.ToggleLooping
		local loadAnimationData = props.LoadAnimationData
		local updateEditingLength = props.UpdateEditingLength

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
				LoadAnimationData = loadAnimationData,
				InstanceType = rootInstance and animationData and animationData.Instances.Root.Type,
				LayoutOrder = 0,
			}),

			MediaControls = Roact.createElement(MediaControls, {
				IsPlaying = isPlaying,
				IsLooping = animationData and animationData.Metadata
					and animationData.Metadata.Looping or false,
				StartFrame = startFrame,
				EndFrame = endFrame,
				SkipBackward = props.SkipBackward,
				SkipForward = props.SkipForward,
				TogglePlay = togglePlay,
				ToggleLooping = toggleLooping,
				LayoutOrder = 1,
			}),

			TimeDisplay = Roact.createElement(TimeDisplay, {
				StartFrame = startFrame,
				EndFrame = endFrame,
				ShowAsTime = showAsSeconds,
				AnimationData = animationData,
				Playhead = playhead,
				EditingLength = editingLength,
				StepAnimation = stepAnimation,
				UpdateEditingLength = updateEditingLength,
				LayoutOrder = 2,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		IsPlaying = state.Status.IsPlaying,
		RootInstance = state.Status.RootInstance
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ToggleLooping = function()
			dispatch(ToggleLooping())
		end,

		TogglePlay = function()
			dispatch(TogglePlay())
		end,

		StepAnimation = function(frame)
			dispatch(StepAnimation(frame))
		end,

		LoadAnimationData = function(data)
			dispatch(LoadAnimationData(data))
		end,

		UpdateEditingLength = function(length)
			dispatch(UpdateEditingLength(length))
		end,

		SkipBackward = function()
			dispatch(SkipAnimation(false))
		end,

		SkipForward = function()
			dispatch(SkipAnimation(true))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AnimationControlPanel)