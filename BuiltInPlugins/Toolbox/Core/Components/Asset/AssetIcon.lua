--[[
	Square image with customizable background and optional endorsed badge

	Props:
		number assetId, used to mark selected asset.
		number typeId, used to check the assetType.
		boolean isEndorsed
		number LayoutOrder = 0
		number curentSoundId
		AssetConfigConstants.ASSET_STATUS status
		boolean isPackage, passed down to AssetIconBadge to show if the asset is a package or not

		callback onMouseEnter()
		callback onMouseLeave()
]]
local FFlagToolboxPackagesInAssetTile = game:GetFastFlag("ToolboxPackagesInAssetTile")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local ToolboxUtilities = if FFlagToolboxPackagesInAssetTile then nil else require(Util.ToolboxUtilities) -- unused variable, remove with FFlagToolboxPackagesInAssetTile
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
			isHovered = true,
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.ASSET_ICON)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end
	
	self.onAssetPreviewButtonClicked = function()
		self.props.onAssetPreviewButtonClicked()
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
		local isPlugin = if FFlagToolboxPackagesInAssetTile then nil else typeId == Enum.AssetType.Plugin.Value -- unused variable, remove with FFlagToolboxPackagesInAssetTile
		local isPackage = if FFlagToolboxPackagesInAssetTile then props.isPackage else nil
		local currentSoundId = props.currentSoundId
		local isLoading = props.isLoading

		local onMouseEnter = self.onMouseEnter
		local onMouseLeave = self.onMouseLeave
		local isHovered = self.state.isHovered
		local isAssetHovered = props.isHovered
		local status = props.status

		local thumbnailUrl = Urls.constructAssetThumbnailUrl(
			assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
		)

		local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.ASSET_ICON)

		local isAudioAsset = typeId == Enum.AssetType.Audio.Value

		local assetStatusImage = status and Images.AssetStatus[status]

		-- Asset Data is missing for AssetPreview in the creation tab.
		local isCurrentlyCreationsTab = Category.getTabForCategoryName(props.categoryName) == Category.CREATIONS

		local children = {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, Constants.ASSET_CORNER_RADIUS),
			}),

			AssetImage = Roact.createElement(ImageWithDefault, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Image = thumbnailUrl,
				defaultImage = "",
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, Constants.ASSET_CORNER_RADIUS),
				}),
			}),

			Badge = if isEndorsed or isPackage then Roact.createElement(AssetIconBadge, { -- isPackage added with FFlagToolboxPackagesInAssetTile
				assetId = assetId,
				isPackage = isPackage, -- added with FFlagToolboxPackagesInAssetTile
				floatLeft = isAudioAsset,
			}) else nil,

			PreviewAudioButton = isAudioAsset and Roact.createElement(AudioPreviewButton, {
				ZIndex = 3,

				assetId = assetId,
				currentSoundId = currentSoundId,
				isLoading = isLoading,
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
				onClick = self.onAssetPreviewButtonClicked,
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

return RoactRodux.connect(mapStateToProps, nil)(AssetIcon)
