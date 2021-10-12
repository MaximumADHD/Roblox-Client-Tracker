--[[
	A play/pause button for audio

	Props:
		number ZIndex
		number assetId
		number currentSoundId
		bool isPlaying

		callback onClick(number assetId)
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")
local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)
local RoactRodux = require(Libs.RoactRodux)

local LoadingIndicator
if FFlagToolboxRemoveWithThemes then
	LoadingIndicator = Framework.UI.LoadingIndicator
else
	LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)
end

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
local Constants = require(Plugin.Core.Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local Actions = Plugin.Core.Actions
local PlayPreviewSound = require(Actions.PlayPreviewSound)
local PausePreviewSound = require(Actions.PausePreviewSound)
local ResumePreviewSound = require(Actions.ResumePreviewSound)

local withTheme = ContextHelper.withTheme

local AudioPreviewButton = Roact.PureComponent:extend("AudioPreviewButton")

local LOADING_HEIGHT = 10

if FFlagToolboxAssetGridRefactor then
	function AudioPreviewButton:init()
		self.onPreviewAudioButtonClicked = function()
			local assetId = self.props.assetId
			local currentSoundId = self.props.currentSoundId
			if currentSoundId == assetId then
				if self.props.isPlaying then
					self.props.pauseASound()

					Analytics.onSoundPausedCounter()

				else
					self.props.resumeASound()

					Analytics.onSoundPlayedCounter()
				end
			else
				self.props.playASound(assetId)

				Analytics.onSoundPlayedCounter()
			end
		end
	end
end

function AudioPreviewButton:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function AudioPreviewButton:renderContent(theme)
	local props = self.props
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local position = UDim2.new(1, 0, 1, 0)
	local size = UDim2.new(0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE, 0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE)

	local zIndex = props.ZIndex or 0

	local assetId = props.assetId
	local isLoading = props.isLoading

	local currentSoundId = props.currentSoundId
	local isPlaying = props.isPlaying

	local showPauseIcon = (currentSoundId == assetId) and isPlaying
	local image = showPauseIcon and Images.AUDIO_PREVIEW_PAUSE or Images.AUDIO_PREVIEW_PLAY

	local assetIconTheme = FFlagToolboxRemoveWithThemes and theme.asset.icon or theme.asset.assetIcon

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
				if FFlagToolboxAssetGridRefactor then
					self.onPreviewAudioButtonClicked()
				else
					props.onClick(assetId)
				end
			end,
		})
	end
end

if FFlagToolboxWithContext then
	AudioPreviewButton = withContext({
		Stylizer = ContextServices.Stylizer,
	})(AudioPreviewButton)
else
	ContextServices.mapToProps(AudioPreviewButton, {
		Stylizer = ContextServices.Stylizer,
	})
end

if FFlagToolboxAssetGridRefactor then
	local function mapStateToProps(state, props)
		state = state or {}
		local sound = state.sound or {}

		return {
			isPlaying = sound.isPlaying or false,
		}
	end

	local function mapDispatchToProps(dispatch)
		return {
			pauseASound = function()
				dispatch(PausePreviewSound())
			end,
			playASound = function(currentSoundId)
				dispatch(PlayPreviewSound(currentSoundId))
			end,
			resumeASound = function()
				dispatch(ResumePreviewSound())
			end,
		}
	end
	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AudioPreviewButton)
else
	return AudioPreviewButton
end
