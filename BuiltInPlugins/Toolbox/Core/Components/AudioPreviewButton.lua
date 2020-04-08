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
local LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
local Constants = require(Plugin.Core.Util.Constants)

local withTheme = ContextHelper.withTheme

local AudioPreviewButton = Roact.PureComponent:extend("AudioPreviewButton")
local FFlagEnableAudioPreview = settings():GetFFlag("EnableAudioPreview")

local LOADING_HEIGHT = 10

function AudioPreviewButton:init(props)
	-- TODO: Remove state.isHovered when FFlagEnableAudioPreview is on
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		if not FFlagEnableAudioPreview then
			self:setState({
				isHovered = true,
			})
		end
	end

	self.onMouseLeave = function()
		if not FFlagEnableAudioPreview then
			self:setState({
				isHovered = false,
			})
		end
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
			size = UDim2.new(0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE, 0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE)
			position = UDim2.new(1, 0, 1, 0)
		end
		local zIndex = props.ZIndex or 0

		local assetId = props.assetId
		local isLoading = props.isLoading

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
			image = showPauseIcon and imagePauseAudio or imagePlayAudio
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

		if FFlagEnableAudioPreview and isLoading then
			return Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.new(position.X, UDim.new(position.Y.Scale, position.Y.Offset - LOADING_HEIGHT/2)),
				Size = UDim2.new(size.X, UDim.new(0, LOADING_HEIGHT)),
			})
		else
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
		end
	end)
end

return AudioPreviewButton