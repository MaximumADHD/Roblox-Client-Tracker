--[[
	Square image with customizable background and optional endorsed badge

	Props:
		number assetId
		number typeId
		boolean isEndorsed
		number LayoutOrder = 0
		number curentSoundId
		boolean isPlaying

		callback onMouseEnter()
		callback onMouseLeave()
		callback onPreviewAudioButtonClicked()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local Urls = require(Plugin.Core.Util.Urls)

local Background = require(Plugin.Core.Types.Background)

local getModal = require(Plugin.Core.Consumers.getModal)
local withModal = require(Plugin.Core.Consumers.withModal)

local AssetIconBadge = require(Plugin.Core.Components.Asset.AssetIconBadge)
local AudioPreviewButton = require(Plugin.Core.Components.AudioPreviewButton)
local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local AssetIcon = Roact.PureComponent:extend("AssetIcon")

function AssetIcon:init(props)
	self.state = {
		isHovered = false
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.ASSET_ICON)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false
		})
	end
end

function AssetIcon:render()
	return withModal(function(modalTarget, modalStatus)
		local props = self.props

		local assetId = props.assetId
		local assetName = props.assetName

		local layoutOrder = props.LayoutOrder or 0
		local backgroundIndex = props.backgroundIndex
		local isEndorsed = props.isEndorsed
		local typeId = props.typeId
		local currentSoundId = props.currentSoundId
		local isPlaying = props.isPlaying

		local onMouseEnter = self.onMouseEnter
		local onMouseLeave = self.onMouseLeave
		local onPreviewAudioButtonClicked = props.onPreviewAudioButtonClicked

		local isHovered = self.state.isHovered

		local thumbnailUrl = Urls.constructAssetThumbnailUrl(assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE)

		local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.ASSET_ICON)

		local isAudioAsset = typeId == Enum.AssetType.Audio.Value

		return Background.renderBackground(backgroundIndex, {
			Size = UDim2.new(1, 0, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			ZIndex = 1,
			LayoutOrder = layoutOrder,

			[Roact.Event.MouseEnter] = onMouseEnter,
			[Roact.Event.MouseLeave] = onMouseLeave,
		}, {
			AssetImage = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = thumbnailUrl,
			}),

			Badge = isEndorsed and Roact.createElement(AssetIconBadge, {
				assetId = assetId,
				floatLeft = isAudioAsset,
			}),

			PreviewAudioButton = isAudioAsset and Roact.createElement(AudioPreviewButton, {
				Position = UDim2.new(0.65, 0, 0.75, 0),
				Size = UDim2.new(0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE, 0, Constants.ASSET_PLAY_AUDIO_ICON_SIZE),
				ZIndex = 3,

				assetId = assetId,
				currentSoundId = currentSoundId,
				isPlaying = isPlaying,
				onClick = onPreviewAudioButtonClicked,
			}),

			TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
				Text = assetName,
				canShowCurrentTooltip = canShowCurrentTooltip,
				isHovered = isHovered,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}
	local selectedBackgroundIndex = pageInfo.selectedBackgroundIndex or 1
	local hoveredBackgroundIndex = pageInfo.hoveredBackgroundIndex or 0

	return {
		backgroundIndex = hoveredBackgroundIndex ~= 0 and hoveredBackgroundIndex or selectedBackgroundIndex
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(AssetIcon)
