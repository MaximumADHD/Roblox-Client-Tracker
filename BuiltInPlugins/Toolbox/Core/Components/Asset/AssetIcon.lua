--[[
	Square image with customizable background and optional endorsed badge

	Props:
		number assetId
		number typeId
		boolean isEndorsed
		number LayoutOrder = 0
		number curentSoundId
		boolean isPlaying
		Constants.AssetStatus status

		callback onMouseEnter()
		callback onMouseLeave()
		callback onPreviewAudioButtonClicked()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Urls = require(Plugin.Core.Util.Urls)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal

local AssetIconBadge = require(Plugin.Core.Components.Asset.AssetIconBadge)
local AssetBackground = require(Plugin.Core.Components.Asset.AssetBackground)
local AudioPreviewButton = require(Plugin.Core.Components.AudioPreviewButton)
local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)
local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local PopUpWrapperButton = require(Plugin.Core.Components.Asset.Preview.PopUpWrapperButton)

local AssetIcon = Roact.PureComponent:extend("AssetIcon")

local PREVIEW_POSITION = UDim2.new(1, -14, 0, 14)
local ASSET_STATUS_POSITION = UDim2.new(0, 14, 0, 14)
local ASSET_STATUS_SIZE = UDim2.new(0, 16, 0, 16)

function AssetIcon:init(props)
	self.state = {
		isHovered = false,
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
		local isAssetHovered = props.isHovered
		local status = props.status

		local thumbnailUrl = Urls.constructAssetThumbnailUrl(assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE)

		local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.ASSET_ICON)

		local isAudioAsset = typeId == Enum.AssetType.Audio.Value

		local assetStatusImage = status and Images.AssetStatus[status]

		local showAssetPreview = typeId == Enum.AssetType.Model.Value
			or typeId == Enum.AssetType.MeshPart.Value
			or typeId == Enum.AssetType.Decal.Value

		local children = {
			AssetImage = Roact.createElement(ImageWithDefault, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Image = thumbnailUrl,
				defaultImage = "",
			}) or Roact.createElement("ImageLabel", {
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

			AssetPreviewTriggerButton = showAssetPreview and Roact.createElement(PopUpWrapperButton, {
				position = PREVIEW_POSITION,
				ShowIcon = isAssetHovered,
				onClick = props.onAssetPreviewButtonClicked,
			}),

			AssetStatus = isAssetHovered and assetStatusImage and Roact.createElement("ImageLabel", {
				Position = ASSET_STATUS_POSITION,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = ASSET_STATUS_SIZE,
				Image = assetStatusImage,
				BackgroundTransparency = 1,
			}),

			TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
				Text = assetName,
				canShowCurrentTooltip = canShowCurrentTooltip,
				isHovered = isHovered,
			}),
		}

		return Roact.createElement(AssetBackground, {
			backgroundIndex = backgroundIndex,

			Size = UDim2.new(1, 0, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			ZIndex = 1,
			LayoutOrder = layoutOrder,

			[Roact.Event.MouseEnter] = onMouseEnter,
			[Roact.Event.MouseLeave] = onMouseLeave,
		}, children)
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

return RoactRodux.connect(mapStateToProps, nil)(AssetIcon)
