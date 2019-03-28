--[[
	A play/pause button for audio

	Props:
		UDim2 Position
		UDim2 Size
		number ZIndex
		number assetId
		number currentSoundId
		bool isPlaying

		callback onClick(number assetId)
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local withTheme = ContextHelper.withTheme

local AudioPreviewButton = Roact.PureComponent:extend("AudioPreviewButton")

function AudioPreviewButton:init(props)
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end
end

function AudioPreviewButton:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(0, 32, 0, 32)
		local zIndex = props.ZIndex or 0

		local assetId = props.assetId

		local currentSoundId = props.currentSoundId
		local isPlaying = props.isPlaying
		local isDarkerTheme = theme.isDarkerTheme
		local showPauseIcon = (currentSoundId == assetId) and isPlaying
		local isHovered = state.isHovered
		local imagePauseAudio = isDarkerTheme and Images.LIGHT_PAUSE_AUDIO or Images.PAUSE_AUDIO
		local imagePauseAudioHovered = isDarkerTheme and Images.LIGHT_PAUSE_AUDIO_HOVERED or Images.PAUSE_AUDIO_HOVERED
		local imagePlayAudio = isDarkerTheme and Images.LIGHT_PLAY_AUDIO or Images.PLAY_AUDIO
		local imagePlayAudioHovered = isDarkerTheme and Images.LIGHT_PLAY_AUDIO_HOVERED or Images.PLAY_AUDIO_HOVERED

		local image = showPauseIcon and (isHovered and imagePauseAudioHovered or imagePauseAudio)
			or (isHovered and imagePlayAudioHovered or imagePlayAudio)

		return Roact.createElement("ImageButton", {
			Position = position,
			Size = size,
			ZIndex = zIndex,

			Image = image,
			BackgroundTransparency = 1,

			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.MouseButton1Click] = function(rbx)
				props.onClick(assetId)
			end,
		})
	end)
end

return AudioPreviewButton
