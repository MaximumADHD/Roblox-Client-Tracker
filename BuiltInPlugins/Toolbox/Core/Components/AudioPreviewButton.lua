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
local Constants = require(Plugin.Core.Util.Constants)

local withTheme = ContextHelper.withTheme

local AudioPreviewButton = Roact.PureComponent:extend("AudioPreviewButton")
local FFlagEnableAudioPreview = settings():GetFFlag("EnableAudioPreview")

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

local HOVERED_SIZE = UDim2.new(0, 32, 0, 32)

function AudioPreviewButton:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or HOVERED_SIZE
		if FFlagEnableAudioPreview then
			if state.isHovered then
				size = HOVERED_SIZE
				-- With size changed from 28 into 32.
				-- We need to offset the size with 2 pixel to make hover look good.
				position = UDim2.new(1, 2, 1, 2)
			else
				size = UDim2.new(0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE, 0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE)
				position = UDim2.new(1, 0, 1, 0)
			end
		end
		local zIndex = props.ZIndex or 0

		local assetId = props.assetId

		local currentSoundId = props.currentSoundId
		local isPlaying = props.isPlaying

		local showPauseIcon = (currentSoundId == assetId) and isPlaying
		local isHovered = state.isHovered
		local imagePauseAudio
		local imagePauseAudioHovered
		local imagePlayAudio
		local imagePlayAudioHovered
		local image
		if FFlagEnableAudioPreview then
			imagePauseAudio = Images.AUDIO_PREVIEW_PAUSE
			imagePlayAudio = Images.AUDIO_PREVIEW_PLAY
			image = showPauseIcon and (isHovered and imagePauseAudio) or imagePlayAudio
		else
			-- TODO: Remove me with FFlagEnableAudioPreview
			imagePauseAudio = Images.PAUSE_AUDIO
			imagePauseAudioHovered = Images.PAUSE_AUDIO_HOVERED
			imagePlayAudio = Images.PLAY_AUDIO
			imagePlayAudioHovered = Images.PLAY_AUDIO_HOVERED
			image = showPauseIcon and (isHovered and imagePauseAudioHovered or imagePauseAudio)
			or (isHovered and imagePlayAudioHovered or imagePlayAudio)
		end
		local assetIconTheme = theme.asset.assetIcon

		return Roact.createElement("ImageButton", {
			AnchorPoint = FFlagEnableAudioPreview and Vector2.new(1, 1) or nil,
			Position = position,
			Size = size,
			ZIndex = zIndex,

			Image = image,
			ImageColor3 = FFlagEnableAudioPreview and assetIconTheme.buttonColor or nil,
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
