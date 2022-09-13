--[[
	Series of text fields to control both the current scrubber time
	and the editing length in the animation editor.

	Properties:
		table AnimationData = The current animation data.
		int StartTick = beginning tick displayed on the timeline/dope sheet range
		int EndTick = last tick displayed on the timeline/dope sheet range
		int Playhead = current tick location of the scubber
		int EditingLength = current maximum length of the animation editor timeline
		bool ShowAsTime = if text boxes should display time in seconds:frames or just frames
		int LayoutOrder = The display order of this component.

		function UpdateEditingLength(int length) = A callback for setting the timeline
			length in the editor.
		function StepAnimation(int tick) = A callback for scrubbing the animation
			to the given tick.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Constants = require(Plugin.Src.Util.Constants)
local StringUtils = require(Plugin.Src.Util.StringUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TextBox = require(Plugin.Src.Components.TextBox)
local Tooltip = require(Plugin.Src.Components.Tooltip)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)

local TimeDisplay = Roact.PureComponent:extend("TimeDisplay")

function TimeDisplay:init()
	self.setCurrentTime = function(rbx, focused)
		local props = self.props
		local animationData = props.AnimationData
		if not focused and animationData then
			local showAsTime = props.ShowAsTime
			local endTick = props.EndTick
			local updateEditingLength = props.UpdateEditingLength
			local stepAnimation = props.StepAnimation
			local frameRate = props.FrameRate

			local time = StringUtils.parseTime(rbx.Text, frameRate) or 0
			time = math.clamp(time, 0, Constants.TICK_FREQUENCY * Constants.MAX_ANIMATION_LENGTH)

			if time > endTick then
				updateEditingLength(time)
			end
			rbx.Text = StringUtils.formatTime(time, frameRate, showAsTime)
			stepAnimation(time)
		end
	end

	self.setEndTime = function(rbx, focused)
		local props = self.props
		local animationData = props.AnimationData
		if not focused and animationData then
			local showAsTime = props.ShowAsTime
			local frameRate = props.FrameRate
			local updateEditingLength = props.UpdateEditingLength
			local endTick = animationData.Metadata.EndTick

			local newLength = StringUtils.parseTime(rbx.Text, frameRate) or 0
			newLength = math.clamp(newLength, math.max(endTick, Constants.TICK_FREQUENCY), Constants.MAX_ANIMATION_LENGTH)
			rbx.Text = StringUtils.formatTime(newLength, frameRate, showAsTime)
			updateEditingLength(newLength)
		end
	end
end

function TimeDisplay:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme

	local showAsTime = props.ShowAsTime
	local playhead = props.Playhead
	local editingLength = props.EditingLength
	local frameRate = props.FrameRate
	local textBoxTheme = theme.textBox
	local playbackTheme = theme.playbackTheme
	local readOnly = props.ReadOnly

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, Constants.TIME_DISPLAY_WIDTH, 1, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		CurrentFrameBox = Roact.createElement(TextBox, {
			Size = UDim2.new(0, 40, 1, -6),
			Text = StringUtils.formatTime(playhead, frameRate, showAsTime),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 0,
			ClearTextOnFocus = false,
			FocusChanged = self.setCurrentTime,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				TextKey = "CurrentFrameBox",
			}),
		}),

		DividerLabel = Roact.createElement("TextLabel", {
			Text = "/",
			TextSize = textBoxTheme.textSize,
			Font = theme.font,
			Size = UDim2.new(0, 12, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			TextColor3 = playbackTheme.iconColor,
		}),

		EndFrameBox = Roact.createElement(TextBox, {
			Size = UDim2.new(0, 40, 1, -6),
			Text = StringUtils.formatTime(editingLength, frameRate, showAsTime),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 2,
			ClearTextOnFocus = false,
			FocusChanged = self.setEndTime,
			ReadOnly = GetFFlagKeyframeReduction() and readOnly,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				TextKey = "EndFrameBox",
			}),
		}),
	})
end

TimeDisplay = withContext({
	Stylizer = ContextServices.Stylizer,
})(TimeDisplay)

return TimeDisplay
