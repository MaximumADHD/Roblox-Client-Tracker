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
	number timePassed, audio preview know's the time length, is suited to calculate this.

	function onResume, accept an assetId.
	function onPause, pause
    function onPlay, This one will reset time length and time remaining.

	the sound object inside the Toolbox plugin to play. We don't want to too many sound source.
]]
local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")

local Library = script.Parent.Parent.Parent
local Roact = require(Library.Parent.Roact)

local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local getTimeString = require(Library.Utils.getTimeString)
local RoundButton = require(Library.Components.RoundFrame)

local LoadingIndicator = require(Library.Components.LoadingIndicator)
local TIME_LABEL_HEIGHT = 15
local BUTTON_SIZE = 28

local AudioControl = Roact.PureComponent:extend("AudioControl")
if FFlagEnableToolboxVideos then
	return AudioControl
end
function AudioControl:init(props)
	self.state = {
		init = false;
	}

	self.onActivated = function()
		if not self.props.isLoaded then
			return
		end
		if self.props.isPlaying then
			self.pauseASound()
		else
			self.startPlaying()
		end
	end

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
		local size = props.size
		local anchorPoint = props.anchorPoint
		local position = props.position
		local timeLength = props.timeLength
		local audioPreviewTheme = theme.assetPreview.audioPreview
		local audioControlOffset = props.audioControlOffset
		local isPlaying = props.isPlaying
		local isLoaded = props.isLoaded

		local timePassed = props.timePassed
		local timeString = getTimeString(timePassed) .. '/' .. getTimeString(timeLength)

		return Roact.createElement("Frame", {
			AnchorPoint = anchorPoint,
			BackgroundTransparency = 1,
			Position = position,
			Size = size,
		}, {
			Button = Roact.createElement(RoundButton, {
				AnchorPoint = Vector2.new(0.5, 0),
				AutoButtonColor = false,
				BackgroundColor3 = isLoaded and audioPreviewTheme.buttonBackgroundColor or audioPreviewTheme.buttonDisabledBackgroundColor,
				BackgroundTransparency = isLoaded and 0 or audioPreviewTheme.buttonDisabledBackgroundTransparency,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 24, 0, 0),
				Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),

				OnActivated = self.onActivated,
			}, {
				PlayOrPauseIcon = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = isPlaying and audioPreviewTheme.pauseButton or audioPreviewTheme.playButton,
					ImageColor3 = audioPreviewTheme.buttonColor,
					ImageTransparency = isLoaded and 0 or audioPreviewTheme.buttonDisabledBackgroundTransparency,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 1, 0),
				}),
			}),

			TimeComponent = isLoaded and Roact.createElement("TextLabel", {
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

			LoadingIndicator = (not isLoaded) and Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -audioControlOffset, 0.5, 0),
				Size = UDim2.new(0, 50, 0, TIME_LABEL_HEIGHT),
			}),
		})
	end)
end

return AudioControl