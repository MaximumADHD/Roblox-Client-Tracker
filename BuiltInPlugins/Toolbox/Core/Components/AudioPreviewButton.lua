--[[
	A play/pause button for audio

	Props:
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

local LOADING_HEIGHT = 10

function AudioPreviewButton:render()
	return withTheme(function(theme)
		local props = self.props

		local position = UDim2.new(1, 0, 1, 0)
		local size = UDim2.new(0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE, 0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE)

		local zIndex = props.ZIndex or 0

		local assetId = props.assetId
		local isLoading = props.isLoading

		local currentSoundId = props.currentSoundId
		local isPlaying = props.isPlaying

		local showPauseIcon = (currentSoundId == assetId) and isPlaying
		local image = showPauseIcon and Images.AUDIO_PREVIEW_PAUSE or Images.AUDIO_PREVIEW_PLAY

		local assetIconTheme = theme.asset.assetIcon

		if isLoading then
			return Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.new(position.X, UDim.new(position.Y.Scale, position.Y.Offset - LOADING_HEIGHT/2)),
				Size = UDim2.new(size.X, UDim.new(0, LOADING_HEIGHT)),
			})
		else
			return Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(1, 1),
				Position = position,
				Size = size,
				ZIndex = zIndex,

				Image = image,
				ImageColor3 = assetIconTheme.buttonColor,
				BackgroundTransparency = 1,

				[Roact.Event.MouseButton1Click] = function(rbx)
					props.onClick(assetId)
				end,
			})
		end
	end)
end

return AudioPreviewButton