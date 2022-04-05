--[[
	Animation playback slider wrapping around DevFramework slider.
	Contains a play button to the left and a timer label to the right of the slider.

	Required Props:
		UDim2 Size: size of the frame
		boolean IsPlaying: if animation is playing or pausing.
		number Playhead: position of the current anim.
		callback OnSliderPlayheadChanged: function fired when slider playhead has changed.
		callback OnPlayPauseClicked: fired when the user clicks the Play/Pause button.
		number TrackLength: length of the current track.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local UI = Framework.UI
local Slider = UI.Slider
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local AnimationPlaybackSlider = Roact.PureComponent:extend("AnimationPlaybackSlider")

local Typecheck = Util.Typecheck
Typecheck.wrap(AnimationPlaybackSlider, script)

local timeTextFormat = "%.2f"

function AnimationPlaybackSlider:init()
	self.onValueChanged = function(value)
		self.props.OnSliderPlayheadChanged(value)
	end
end

function AnimationPlaybackSlider:render()
	local props = self.props
	local size = props.Size
	local playhead = props.Playhead or 0
	local isPlaying = props.IsPlaying
	local maxValue = props.TrackLength or 0
	local endFrameText = string.format(timeTextFormat, maxValue)
	local currentFrameText = string.format(timeTextFormat, playhead)
	local isDisabled = maxValue <= 0
	local orderIterator = LayoutOrderIterator.new()

	local theme = props.Stylizer
	local playIamge = theme.PlayImage
	local pauseImage = theme.PauseImage

	return Roact.createElement(Pane, {
		Size = size,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = theme.Padding,
	}, {
		PlayPauseButton = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			BorderColor3 = theme.BorderColor,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
			Size = UDim2.new(0, theme.PlayButtonWidth, 0, theme.PlayButtonWidth),
			Image = isPlaying and pauseImage or playIamge,
			AutoButtonColor = false,
			LayoutOrder = orderIterator:getNextOrder(),
			[Roact.Event.Activated] = function ()
				local isEnabled = props.TrackLength and props.TrackLength > 0
				if isEnabled then
					props.OnPlayPauseClicked(not isPlaying)
				end
			end,
		}),

		ValueSlider = Roact.createElement(Slider, {
			Disabled = isDisabled,
			Min = 0,
			Max = maxValue,
			Value = playhead,
			Size = UDim2.new(1, -theme.PlayButtonWidth - theme.PlayTimeLabelWidth - theme.Padding, 1, 0),
			LayoutOrder = orderIterator:getNextOrder(),
			OnValueChanged = self.onValueChanged,
		}),

		PlayTimeLabel = Roact.createElement(TextLabel, {
			Text = currentFrameText .. " / " .. endFrameText,
			TextColor = isDisabled and theme.TextDisabledColor or theme.TextColor,
			Size = UDim2.new(0, theme.PlayTimeLabelWidth, 1, 0),
			LayoutOrder = orderIterator:getNextOrder(),
		}),
	})
end

AnimationPlaybackSlider = withContext({
	Stylizer = ContextServices.Stylizer,
})(AnimationPlaybackSlider)

return AnimationPlaybackSlider