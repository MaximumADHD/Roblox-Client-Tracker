--[[
	Audio control is a piece of control panel we used in asset preview to provide play,
	pause function for giving assetId. And a time label to show time left.
	Start time counter when it's playing.

	Necessary properties:
	UDim2  position
	UDim2  size
	number audioControlOffset, used to control the position of the audio control depending if we show tree view.
	number timeLength, length got from the sound instance.
	bool isPlaying, come from audio preview, used to change the button control.
	number timeRemaining, audio preview know's the time length, is suited to calculate this.

	function onResume, accept an assetId.
	function onPause, pause
    function onPlay, This one will reset time length and time remaining.

	the sound object inside the Toolbox plugin to play. We don't want to too many sound source.
]]

local Library = script.Parent.Parent.Parent
local Roact = require(Library.Parent.Roact)

local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local getTimeString = require(Library.Utils.getTimeString)

local TIME_LABEL_HEIGHT = 15

local AudioControl = Roact.PureComponent:extend("AudioControl")

function AudioControl:init(props)
	self.state = {
		init = false;
	}

	self.startPlaying = function()
		if self.state.init then
			props.onResume()
		else
			-- Will update the time length and time remaining.
			props.onPlay()
			self:setState({
				init = true
			})
		end
	end

	self.pauseASound = function()
		props.onPause()
	end
end

function AudioControl:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state
		local size = props.size
		local anchorPoint = props.anchorPoint
		local position = props.position
		local timeLength = props.timeLength
		local audioPreviewTheme = theme.assetPreview.audioPreview
		local audioControlOffset = props.audioControlOffset
		local timeRemaining = props.timeRemaining
		local isPlaying = props.isPlaying

		local timeString = getTimeString(timeRemaining) .. '/' .. getTimeString(timeLength)

		return Roact.createElement("Frame", {
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			PlayButton = (not isPlaying) and Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0, 24, 0.5, 0),
				Size = UDim2.new(0, 26, 0, 26),

				Image = audioPreviewTheme.playButton,
				ImageColor3 = audioPreviewTheme.button_Color,
				BackgroundTransparency = 1,

				[Roact.Event.Activated] = self.startPlaying,
			}),

			PauseButton = isPlaying and Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0, 24, 0.5, 0),
				Size = UDim2.new(0, 26, 0, 26),

				Image = audioPreviewTheme.pauseButton,
				ImageColor3 = audioPreviewTheme.button_Color,
				BackgroundTransparency = 1,

				[Roact.Event.Activated] = self.pauseASound,
			}),

			TimeComponent = Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -audioControlOffset, 0.5, 0),
				Size = UDim2.new(0, 204, 0, TIME_LABEL_HEIGHT),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Text = timeString,
				Font = audioPreviewTheme.font,
				TextSize = audioPreviewTheme.fontSize,
				TextXAlignment = Enum.TextXAlignment.Right,
				TextColor3 = audioPreviewTheme.textColor,
			}),
		})
	end)
end

return AudioControl