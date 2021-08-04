--[[
	Series of text fields to control both the current scrubber time
	and the editing length in the animation editor.

	Properties:
		table AnimationData = The current animation data.
		int StartFrame = beginning frame displayed on the timeline/dope sheet range
		int EndFrame = last frame displayed on the timeline/dope sheet range
		int Playhead = current frame location of the scubber
		int EditingLength = current maximum length of the animation editor timeline
		bool ShowAsTime = if text boxes should display time in seconds:frames or just frames
		int LayoutOrder = The display order of this component.

		function UpdateEditingLength(int length) = A callback for setting the timeline
			length in the editor.
		function StepAnimation(int frame) = A callback for scrubbing the animation
			to the given frame.
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

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

local TimeDisplay = Roact.PureComponent:extend("TimeDisplay")

function TimeDisplay:init()
	self.setCurrentTime = function(rbx, focused)
		local props = self.props
		local animationData = props.AnimationData
		if not focused and animationData then
			local showAsTime = props.ShowAsTime
			local startFrame = props.StartFrame
			local endFrame = props.EndFrame
			local updateEditingLength = props.UpdateEditingLength
			local stepAnimation = props.StepAnimation
			local animationData = props.AnimationData
			local frameRate = animationData.Metadata.FrameRate

			local time = StringUtils.parseTime(rbx.Text, frameRate) or 0
			time = math.clamp(time, startFrame, AnimationData.getMaximumLength(frameRate))

			if time > endFrame then
				updateEditingLength(time)
			end
			rbx.Text = showAsTime and StringUtils.formatTime(time, frameRate) or tostring(time)
			stepAnimation(time)
		end
	end

	self.setEndTime = function(rbx, focused)
		local props = self.props
		local animationData = props.AnimationData
		if not focused and animationData then
			local showAsTime = props.ShowAsTime
			local frameRate = animationData.Metadata.FrameRate
			local updateEditingLength = props.UpdateEditingLength
			local maxLength = AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
			local endFrame = animationData.Metadata.EndFrame

			local newLength = StringUtils.parseTime(rbx.Text, frameRate) or 0
			newLength = math.min(newLength, maxLength)
			newLength = math.max(newLength, endFrame, animationData.Metadata.FrameRate)
			rbx.Text = showAsTime and StringUtils.formatTime(newLength, frameRate) or tostring(newLength)
			updateEditingLength(newLength)
		end
	end
end

function TimeDisplay:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")

		local showAsTime = props.ShowAsTime
		local playhead = props.Playhead
		local animationData = props.AnimationData
		local editingLength = props.EditingLength
		local frameRate = animationData and animationData.Metadata.FrameRate or Constants.DEFAULT_FRAMERATE

		local textBoxTheme = theme.textBox
		local playbackTheme = theme.playbackTheme

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
				Text = showAsTime and StringUtils.formatTime(playhead, frameRate) or tostring(math.floor(playhead)),
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
				Text = showAsTime and StringUtils.formatTime(editingLength, frameRate) or tostring(editingLength),
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
				ClearTextOnFocus = false,
				FocusChanged = self.setEndTime,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					TextKey = "EndFrameBox",
				}),
			}),
		})
end

if FFlagAnimationClipEditorWithContext then
	TimeDisplay = withContext({
		Theme = ContextServices.Theme,
	})(TimeDisplay)
else
	ContextServices.mapToProps(TimeDisplay, {
		Theme = ContextServices.Theme,
	})
end



return TimeDisplay