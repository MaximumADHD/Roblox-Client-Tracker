--[[
	Square image with customizable background and optional endorsed badge

	Props:
		number assetId, used to mark selected asset.
		number typeId, used to check the assetType.
		boolean isEndorsed
		number LayoutOrder = 0
		number curentSoundId
		boolean isPlaying // remove with FFlagToolboxAssetGridRefactor3
		AssetConfigConstants.ASSET_STATUS status

		callback onMouseEnter()
		callback onMouseLeave()
		callback onPreviewAudioButtonClicked() // remove with FFlagToolboxAssetGridRefactor3
]]
local FFlagToolboxAssetGridRefactor3 = game:GetFastFlag("ToolboxAssetGridRefactor3")

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local ToolboxUtilities = require(Util.ToolboxUtilities)
local Urls = require(Util.Urls)

local Types = Plugin.Core.Types
local Category = require(Types.Category)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal

local AssetIconBadge = require(Plugin.Core.Components.Asset.AssetIconBadge)
local AssetBackground = require(Plugin.Core.Components.Asset.AssetBackground)
local AudioPreviewButton = require(Plugin.Core.Components.AudioPreviewButton)
local AudioProgressBar = require(Plugin.Core.Components.Asset.AudioProgressBar)
local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)
local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)
local PopUpWrapperButton = require(Plugin.Core.Components.Asset.Preview.PopUpWrapperButton)

local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
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

	if FFlagToolboxAssetGridRefactor3 then
		self.onAssetPreviewButtonClicked = function()
			self.props.onPreviewToggled(true, self.props.assetId)
		end
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
		local isPlugin = typeId == Enum.AssetType.Plugin.Value
		local currentSoundId = props.currentSoundId
		local isPlaying = (not FFlagToolboxAssetGridRefactor3) and props.isPlaying or nil
		local isLoading = props.isLoading

		local onMouseEnter = self.onMouseEnter
		local onMouseLeave = self.onMouseLeave
		local onPreviewAudioButtonClicked = (not FFlagToolboxAssetGridRefactor3) and props.onPreviewAudioButtonClicked or nil

		local isHovered = self.state.isHovered
		local isAssetHovered = props.isHovered
		local status = props.status

		local thumbnailUrl = Urls.constructAssetThumbnailUrl(assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE)

		local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.ASSET_ICON)

		local isAudioAsset = typeId == Enum.AssetType.Audio.Value

		local assetStatusImage = status and Images.AssetStatus[status]

		-- Asset Data is missing for AssetPreview in the creation tab.
		local isCurrentlyCreationsTab = Category.getTabForCategoryName(props.categoryName) == Category.CREATIONS
		
		local children = {
			AssetImage = Roact.createElement(ImageWithDefault, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Image = thumbnailUrl,
				defaultImage = "",
			}),

			Badge = isEndorsed and Roact.createElement(AssetIconBadge, {
				assetId = assetId,
				floatLeft = isAudioAsset,
			}),

			PreviewAudioButton = isAudioAsset and Roact.createElement(AudioPreviewButton, {
				ZIndex = 3,

				assetId = assetId,
				currentSoundId = currentSoundId,
				isPlaying = (not FFlagToolboxAssetGridRefactor3) and isPlaying or nil,
				isLoading = isLoading,
				onClick = (not FFlagToolboxAssetGridRefactor3) and onPreviewAudioButtonClicked or nil,
			}),

			AudioProgressBar = isAudioAsset and Roact.createElement(AudioProgressBar, {
				AnchorPoint = Vector2.new(0, 1),
				assetId = assetId,
				currentSoundId = currentSoundId,
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 2),
			}),

			AssetPreviewTriggerButton = not isCurrentlyCreationsTab and Roact.createElement(PopUpWrapperButton, {
				position = PREVIEW_POSITION,
				ShowIcon = isAssetHovered,
				onClick = FFlagToolboxAssetGridRefactor3 and self.onAssetPreviewButtonClicked or props.onAssetPreviewButtonClicked,
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


AssetIcon = withContext({
	Stylizer = ContextServices.Stylizer,
})(AssetIcon)



local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	local pageInfo = state.pageInfo or {}
	local selectedBackgroundIndex = pageInfo.selectedBackgroundIndex or 1
	local hoveredBackgroundIndex = pageInfo.hoveredBackgroundIndex or 0
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	return {
		backgroundIndex = hoveredBackgroundIndex ~= 0 and hoveredBackgroundIndex or selectedBackgroundIndex,
		categoryName = categoryName,
		elapsedTime = sound.elapsedTime or 0,
		totalTime = sound.totalTime or 0,
	}
end

local mapDispatchToProps
if FFlagToolboxAssetGridRefactor3 then
	mapDispatchToProps = function (dispatch)
		return {
			onPreviewToggled = function(isPreviewing, previewAssetId)
				dispatch(SetAssetPreview(isPreviewing, previewAssetId))
			end,
		}
	end
end
return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetIcon)
